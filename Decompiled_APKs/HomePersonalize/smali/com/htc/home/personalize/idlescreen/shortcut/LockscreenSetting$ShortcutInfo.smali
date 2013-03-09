.class public Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;
.super Ljava/lang/Object;
.source "LockscreenSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutInfo"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mClassName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;->mPackageName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/htc/home/personalize/idlescreen/shortcut/LockscreenSetting$ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 51
    return-void
.end method
