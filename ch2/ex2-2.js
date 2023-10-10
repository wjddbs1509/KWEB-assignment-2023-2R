const fs=require('fs');
const path=require('path');
const util=require('util');

const getDirList = util.promisify(fs.readdir);
const getStat=util.promisify(fs.stat);

const curdir='test'; //.\왜 안 됨?

const Dirsearch = async (dir) => {
  const direlements = await getDirList(dir);
  direlements.forEach(async direlement=>{
    const curpath=path.join(dir, direlement);
    const stat=await getStat(curpath);
    if(stat.isDirectory()){
      await Dirsearch(curpath);
    }
    else if(path.extname(curpath)=='.js'){
      console.log(curpath);
    }
  });
};

(async ()=>{
  try{
    await Dirsearch(curdir);
  } catch (err){
    console.error(err);
  }
})();