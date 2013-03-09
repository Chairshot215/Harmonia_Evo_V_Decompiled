.class public Lcom/m0narx/tweaks/main;
.super Lcom/htc/widget/CarouselActivity;
.source "main.java"


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.m0narx.tweaks.MyProvider"

.field public static AppTitle:Ljava/lang/String;

.field public static is_need_on_change_dialog:Z

.field public static is_need_phone_restart:Z

.field public static is_need_sense_restart:Z

.field public static is_need_systemui_restart:Z

.field public static mActivity:Lcom/htc/widget/CarouselActivity;

.field public static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    .line 30
    sput-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    .line 31
    sput-boolean v0, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/m0narx/tweaks/main;->mActivity:Lcom/htc/widget/CarouselActivity;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "com.m0narx.tweaks.MyProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static FC()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/m0narx/tweaks/main;->mActivity:Lcom/htc/widget/CarouselActivity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/m0narx/tweaks/main;->mActivity:Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->finish()V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public CheckRebootState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    if-eqz v0, :cond_0

    .line 98
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_phone_restart:Z

    if-eqz v0, :cond_1

    .line 99
    sput-boolean v1, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 100
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartPhone(Landroid/content/Context;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    if-eqz v0, :cond_2

    .line 102
    sput-boolean v1, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 103
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartSenseNSytemUI(Landroid/content/Context;)V

    goto :goto_0

    .line 104
    :cond_2
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_sense_restart:Z

    if-eqz v0, :cond_3

    .line 105
    sput-boolean v1, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 106
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartSense(Landroid/content/Context;)V

    goto :goto_0

    .line 107
    :cond_3
    sget-boolean v0, Lcom/m0narx/tweaks/main;->is_need_systemui_restart:Z

    if-eqz v0, :cond_0

    .line 108
    sput-boolean v1, Lcom/m0narx/tweaks/main;->is_need_on_change_dialog:Z

    .line 109
    invoke-static {p0}, Lcom/m0narx/tweaks/widgets/Dialogs;->restartSystemUI(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/m0narx/tweaks/main;->setGId(I)V

    .line 49
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 51
    sput-object p0, Lcom/m0narx/tweaks/main;->mActivity:Lcom/htc/widget/CarouselActivity;

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/m0narx/tweaks/main;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/m0narx/tweaks/main;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/m0narx/tweaks/main;->AppTitle:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    .line 58
    .local v0, mPanelHost:Lcom/htc/widget/CarouselHost;
    const-string v1, "About"

    const v3, 0x7f050018

    .line 59
    const v4, 0x7f020021

    .line 60
    const v5, 0x7f020022

    .line 61
    const v6, 0x7f020023

    .line 62
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.about"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    .line 58
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 65
    const-string v1, "SystemUI"

    const v3, 0x7f050019

    .line 66
    const v4, 0x7f02001e

    .line 67
    const v5, 0x7f02001f

    .line 68
    const v6, 0x7f020020

    .line 69
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.systemui"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 72
    const-string v1, "Rosie"

    const v3, 0x7f05001b

    .line 73
    const v4, 0x7f02001b

    .line 74
    const v5, 0x7f02001c

    .line 75
    const v6, 0x7f02001d

    .line 76
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.rosie"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    .line 72
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 78
    const-string v1, "Lockscreen"

    const v3, 0x7f05001c

    .line 79
    const v4, 0x7f020015

    .line 80
    const v5, 0x7f020016

    .line 81
    const v6, 0x7f020017

    .line 82
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.lockscreen"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    .line 78
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 84
    const-string v1, "Misc"

    const v3, 0x7f05001d

    .line 85
    const v4, 0x7f020018

    .line 86
    const v5, 0x7f020019

    .line 87
    const v6, 0x7f02001a

    .line 88
    new-instance v7, Landroid/content/Intent;

    const-string v2, "com.m0narx.tweaks.misc"

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    .line 84
    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;)V

    .line 89
    return-void

    .line 54
    .end local v0           #mPanelHost:Lcom/htc/widget/CarouselHost;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabName"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/m0narx/tweaks/main;->CheckRebootState()V

    .line 94
    return-void
.end method
