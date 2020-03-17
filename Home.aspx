<%@ Page Title="" Language="C#" MasterPageFile="~/after_login.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container" style=" margin-top:10px; padding:0px 0px 0px 0px; margin-left:10px; margin-right:10px; margin-bottom:40px;">
<div id="div1" runat="server" style=" font-weight: bold; width:90%;" class=" well well-sm"></div>
<div class="page-header">
  <h1>Recenlty Added Games</h1>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="thumbnail">
        <a href="gamedetails.aspx?Id=1002" >
        <img src="images/Call of Duty (classic).jpg"alt="Call of Duty (Classic)" style="width:100%"/>
            <div class="caption">
                <p>Call of Duty is a first-person shooter video game franchise published by Activision. Starting out in 2003, it first focused on games set in World War II, but over time, the series has seen games set in modern times, the midst of the Cold War, futuristic worlds, and outer space. The games were first developed by Infinity Ward, then also by Treyarch and Sledgehammer Games. </p>
            </div>
        </a>
        </div>
    </div>

    <div class="col-md-4">
    <div class="thumbnail">
      <a href="gamedetails.aspx?Id=1006">
        <img src="images/Call of Duty (ModerWarfare3).jpg" alt="Call of Duty (ModerWarfare3)" style="width:100%"/>
        <div class="caption">
          <p>Call of Duty: Modern Warfare 3 is a first-person shooter video game, jointly developed by Infinity Ward and Sledgehammer Games, with assistance from Raven Software, and published by Activision. The game was released worldwide in November 2011 for Microsoft Windows, the Xbox 360, PlayStation 3, and Wii.</p>
        </div>
      </a>
    </div>
  </div>
    
    <div class="col-md-4">
    <div class="thumbnail">
      <a href="gamedetails.aspx?Id=1008">
        <img src="images/Call of Duty (BlackOps2).jpg" alt="Tom Clancy's Ghost Recon Breakpoint" style="width:100%"/>
        <div class="caption">
          <p>Call of Duty: Black Ops II is a first-person shooter developed by Treyarch and published by Activision. It was released for Microsoft Windows, PlayStation 3, and the Xbox 360 on November 13, 2012, and for the Wii U on November 18 in North America and November 30 in PAL regions.</p>
        </div>
      </a>
    </div>
  </div>

</div>
<hr style=" border-width:medium; border-color:Black ;" />
<div class="page-header">
  <h1>Comming Soon</h1>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/coming soon1.png"alt="TOM Clancy's Breakpoint " style="width:100%; " />
            <div class="caption">
                <p>Tom Clancy's Ghost Recon Breakpoint is an upcoming online tactical shooter video game developed by Ubisoft Paris and published by Ubisoft. It is due to be released worldwide on October 4, 2019, for Microsoft Windows, PlayStation 4 and Xbox One and in November 2019 for the Google Stadia. </p>
                <p>Initial release date: 4 October 2019</p>
            </div>
        
        </div>
    </div>

    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/coming soon2.png"alt="Call of Duty (Modern Warfare)" style="width:100%; " />
            <div class="caption">
                <p>Call of Duty: Modern Warfare is an upcoming first-person shooter video game that is being developed by Infinity Ward and published by Activision. It will serve as the sixteenth overall installment in the Call of Duty series as well as a "soft reboot" of the Modern Warfare sub-series. </p>
                <p>Initial release date: 12 September 2019</p>
            </div>
        
        </div>
    </div>

    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/coming soon3.png"alt="Greedfall" style="width:100%; " />
            <div class="caption">
                <p>Greedfall is an upcoming action role-playing game developed by Spiders and published by Focus Home Interactive. The game is set in 17th century-styled fantasy setting. It will be released for Microsoft Windows, PlayStation 4, and Xbox One on September 10, 2019.</p>
                <p>Initial release date: 10 September 2019</p>
            </div>
        
        </div>
    </div>

</div>
<hr style=" border-width:medium; border-color:Black ;" />
<div class="page-header">
  <h1>Video Game Publishers</h1>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/publisher1.jpg"alt="Activision" style="width:100%; " />
            <div class="caption">
                <p>Activision Publishing, Inc. is an American video game publisher based in Santa Monica, California. It currently serves as the publishing business for its parent company, Activision Blizzard, and consists of several subsidiary studios.</p>
                <p>Founded: 1 October 1979</p>
            </div>
        
        </div>
    </div>

    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/publisher2.jpg"alt="Ubisoft" style="width:100%; " />
            <div class="caption">
                <p>Ubisoft Entertainment SA is a French video game company headquartered in Montreuil with several development studios across the world. It publishes games for several video game franchises, including Assassin's Creed, Far Cry, Just Dance, Prince of Persia, Rayman, Raving Rabbids, and Tom Clancy's.</p>
                <p>Founded: 12 March 1986</p>
            </div>
        
        </div>
    </div>

    <div class="col-md-4">
        <div class="thumbnail">
        
        <img src="pic/publisher3.jpg"alt="EA" style="width:100%; " />
            <div class="caption">
                <p>Electronic Arts Inc. is an American video game company headquartered in Redwood City, California. It is the second-largest gaming company in the Americas and Europe by revenue and market capitalization after Activision Blizzard and ahead of Take-Two Interactive and Ubisoft as of March 2018.</p>
                <p>Founded: 28 May 1982</p>
            </div>
        
        </div>
    </div>
    
</div>
</div>
</asp:Content>

