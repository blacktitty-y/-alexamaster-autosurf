FROM centos
COPY ./alexamaster-autosurf /alexamaster-autosurf
WORKDIR /alexamaster-autosurf
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash - \
    && yum -y install nodejs \
    && yum install -y google-chrome-stable_current_x86_64.rpm \
    && rm -rf google-chrome-stable_current_x86_64.rpm \
    && npm install forever -g \
    && npm install \
    && yum install pango.x86_64 libXcomposite.x86_64 libXcursor.x86_64 libXdamage.x86_64 libXext.x86_64 libXi.x86_64 libXtst.x86_64 cups-libs.x86_64 libXScrnSaver.x86_64 libXrandr.x86_64 GConf2.x86_64 alsa-lib.x86_64 atk.x86_64 gtk3.x86_64 -y
EXPOSE 9090
ENTRYPOINT ["./start.sh"]
