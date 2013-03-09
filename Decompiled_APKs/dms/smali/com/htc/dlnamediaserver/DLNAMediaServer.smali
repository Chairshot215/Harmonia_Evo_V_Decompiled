.class public Lcom/htc/dlnamediaserver/DLNAMediaServer;
.super Landroid/app/Activity;
.source "DLNAMediaServer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private Settings()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/dlnamediaserver/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, theSettings:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->startActivity(Landroid/content/Intent;)V

    .line 23
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->finish()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnamediaserver/DLNAMediaServer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->Settings()V

    return-void
.end method


# virtual methods
.method public CopyResource(ILjava/lang/String;Z)V
    .locals 9
    .parameter "aInputIDResource"
    .parameter "aOutputFileName"
    .parameter "afForceWrite"

    .prologue
    .line 30
    if-nez p3, :cond_0

    .line 33
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 34
    .local v5, theTestExist:Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v5           #theTestExist:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v6

    .line 39
    :cond_0
    const/16 v6, 0x400

    new-array v3, v6, [C

    .line 43
    .local v3, theBuffer:[C
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    const/4 v6, 0x1

    invoke-virtual {p0, p2, v6}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v2, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 44
    .local v2, out:Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v1, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 46
    .local v1, in:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, theLength:I
    if-lez v4, :cond_1

    .line 47
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/OutputStreamWriter;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 51
    .end local v1           #in:Ljava/io/InputStreamReader;
    .end local v2           #out:Ljava/io/OutputStreamWriter;
    .end local v4           #theLength:I
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 52
    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/InputStreamReader;
    .restart local v2       #out:Ljava/io/OutputStreamWriter;
    .restart local v4       #theLength:I
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 50
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x7f07

    const/4 v3, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;

    .line 62
    .local v0, theApp:Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;
    invoke-virtual {v0}, Lcom/htc/dlnamediaserver/DLNAMediaServerApplication;->IsAlreadyStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->Settings()V

    .line 65
    :cond_0
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->setContentView(I)V

    .line 67
    const v1, 0x7f040004

    const-string v2, "mediaCTRLMediaTypes.ini"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 68
    const/high16 v1, 0x7f04

    const-string v2, "ConfigPath.ini"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 69
    const v1, 0x7f040005

    const-string v2, "mediaCTRLServer.ini"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 70
    const v1, 0x7f040003

    const-string v2, "MalibuDataBase.ini"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 71
    const v1, 0x7f040001

    const-string v2, "largeIco.jpg"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 72
    const v1, 0x7f040002

    const-string v2, "largeIco.png"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 73
    const v1, 0x7f040006

    const-string v2, "smallIco.jpg"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 74
    const v1, 0x7f040007

    const-string v2, "smallIco.png"

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->CopyResource(ILjava/lang/String;Z)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f050011

    invoke-virtual {p0, v2}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, v4}, Lcom/htc/dlnamediaserver/DLNAMediaServer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/htc/dlnamediaserver/DLNAMediaServer$1;

    invoke-direct {v2, p0}, Lcom/htc/dlnamediaserver/DLNAMediaServer$1;-><init>(Lcom/htc/dlnamediaserver/DLNAMediaServer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    return-void
.end method
