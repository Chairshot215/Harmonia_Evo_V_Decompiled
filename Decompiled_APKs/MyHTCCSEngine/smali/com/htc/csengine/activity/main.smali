.class public Lcom/htc/csengine/activity/main;
.super Landroid/app/Activity;
.source "main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/csengine/activity/main$HTTPMethod;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cssample"

.field private static final baseURLProv:Ljava/lang/String; = "http://provision-test.dev.csh.tc/"

.field private static final baseURLScene:Ljava/lang/String; = "http://store-int.dev.csh.tc:8080/"

.field private static final baseURLStore:Ljava/lang/String; = "http://10.9.9.35:8080/"


# instance fields
.field private baseProvURLEdtText:Landroid/widget/EditText;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/Button;

.field private getButton:Landroid/widget/Button;

.field logHandler:Landroid/os/Handler;

.field private postButton:Landroid/widget/Button;

.field private putButton:Landroid/widget/Button;

.field private resultText:Landroid/widget/TextView;

.field private startservice:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Lcom/htc/csengine/activity/main$1;

    invoke-direct {v0, p0}, Lcom/htc/csengine/activity/main$1;-><init>(Lcom/htc/csengine/activity/main;)V

    iput-object v0, p0, Lcom/htc/csengine/activity/main;->logHandler:Landroid/os/Handler;

    return-void
.end method

.method private _appendToLogView(Ljava/lang/String;)V
    .locals 3
    .parameter "append"

    .prologue
    .line 129
    const v2, 0x7f040004

    invoke-virtual {p0, v2}, Lcom/htc/csengine/activity/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 130
    .local v1, tvLog:Landroid/widget/TextView;
    const v2, 0x7f040003

    invoke-virtual {p0, v2}, Lcom/htc/csengine/activity/main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 131
    .local v0, svLog:Landroid/widget/ScrollView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v2, Lcom/htc/csengine/activity/main$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/csengine/activity/main$2;-><init>(Lcom/htc/csengine/activity/main;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/htc/csengine/activity/main;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/htc/csengine/activity/main;->_appendToLogView(Ljava/lang/String;)V

    return-void
.end method

.method public static setURLs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "URLStore"
    .parameter "URLScene"
    .parameter "URLProvi"

    .prologue
    .line 114
    const-string v2, "URLPref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 115
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "URLStore"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v2, "URLScene"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v2, "URLProvi"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/htc/csengine/activity/main;->startservice:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 104
    const-string v1, ""

    const-string v2, ""

    iget-object v3, p0, Lcom/htc/csengine/activity/main;->baseProvURLEdtText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/htc/csengine/activity/main;->setURLs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.csengine.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, csIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/csengine/activity/main;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    .end local v0           #csIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "cssample"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/high16 v0, 0x7f02

    invoke-virtual {p0, v0}, Lcom/htc/csengine/activity/main;->setContentView(I)V

    .line 76
    iget-object v0, p0, Lcom/htc/csengine/activity/main;->logHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/htc/cslib/util/LogUtil;->addHandler(Landroid/os/Handler;)V

    .line 78
    iput-object p0, p0, Lcom/htc/csengine/activity/main;->context:Landroid/content/Context;

    .line 80
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/htc/csengine/activity/main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/htc/csengine/activity/main;->baseProvURLEdtText:Landroid/widget/EditText;

    .line 81
    iget-object v0, p0, Lcom/htc/csengine/activity/main;->baseProvURLEdtText:Landroid/widget/EditText;

    const-string v1, "http://provision-test.dev.csh.tc/"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/htc/csengine/activity/main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/csengine/activity/main;->startservice:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/htc/csengine/activity/main;->startservice:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    iget-object v0, p0, Lcom/htc/csengine/activity/main;->logHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/htc/cslib/util/LogUtil;->removeHandler(Landroid/os/Handler;)V

    .line 145
    return-void
.end method

.method protected onPreCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 94
    invoke-static {}, Lcom/htc/cslib/util/LogUtil;->HasIntentEntries()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, Lcom/htc/csengine/activity/main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    .local v0, tvLog:Landroid/widget/TextView;
    invoke-static {}, Lcom/htc/cslib/util/LogUtil;->getLog()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0           #tvLog:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
