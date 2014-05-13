<?php

namespace Application\Controller;

use Zend\Test\PHPUnit\Controller\AbstractHttpControllerTestCase;


class IndexControllerTest extends AbstractHttpControllerTestCase {
    
     /*
     * TODO:
     * 
     * 
     */
    
    public function setUp() {
        $this->setApplicationConfig(include BASE_PATH . '/test/config/application.config.php');
        parent::setUp();
    }
    

    public function testIndexAction(){
        $this->dispatch('/');
        $this->assertResponseStatusCode(200);

    }
    
    public function testIndexActionViewModel(){
        $indexcontroller = new \Application\Controller\IndexController();
        $view = new \Zend\View\Model\ViewModel();
        $this->assertEquals($view, $indexcontroller->indexAction());
    }

      
    public function test404Response(){
        $this->dispatch('/chris-is-the-best');
        $this->assertResponseStatusCode(404);
    }
     
        
}