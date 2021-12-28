process() {
    echo "hello world!!"
    param=$1
    echo $param
    cd $param
    chmod 744 bootstrap.sh
    ./bootstrap.sh
    cd ..
}

git clone git@github.com:ayang818/lark-doc-blog-fe.git
git clone git@github.com:ayang818/lark-doc-blog.git

param=$1
if [ "$param" == "fe" ];then
    process "lark-doc-blog-fe"
elif [ "$param" == "be" ]; then
    process "lark-doc-blog"
else
    process "lark-doc-blog-fe"
    process "lark-doc-blog"
fi