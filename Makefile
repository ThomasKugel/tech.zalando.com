build:
	docker run -u `id -u` -v `pwd`:/workdir -t hjacobs/nikola build

clean:
	docker run -u `id -u` -v `pwd`:/workdir -t hjacobs/nikola clean

deploy:
	rsync -av -4 --no-owner --no-group --no-perms output/* root@tech.zalando.com:/data/www/tech.zalando.com/htdocs
