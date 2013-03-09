.class Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallShortcutInfo"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 199
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mIntent:Landroid/content/Intent;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/launcher/InstallShortcutReceiver$InstallShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
