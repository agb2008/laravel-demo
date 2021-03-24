<?php


namespace App\Services;

use Illuminate\Support\Facades\Storage;
use Orchestra\Parser\Xml\Facade as XmlParser;


class XMLParserService
{
    public function saveNews($link)
    {
        $xml = XmlParser::load($link);

        $data = $xml->parse([
            'title' => [
                'uses' => 'channel.title'
            ],
            'link' => [
                'uses' => 'channel.link'
            ],
            'description' => [
                'uses' => 'channel.description'
            ],
            'image' => [
                'uses' => 'channel.image.url'
            ],
            'news' => [
                'uses' => 'channel.item[title,link,guid,description,pubDate]'
            ],
        ]);

//        dump($data);

        $fileName = sprintf('Logs%s.txt',time() . rand(0, 10000));
//        Storage::disk('publicLogs')->append('log.txt', date('c') . ' ' . $link);
        Storage::disk('publicLogs')->put($fileName, $link);
    }

}
