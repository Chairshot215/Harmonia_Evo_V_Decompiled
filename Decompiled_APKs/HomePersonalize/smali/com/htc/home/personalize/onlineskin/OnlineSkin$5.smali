.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$5;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowStorageFullMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$5;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$5;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-virtual {v1, v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startActivity(Landroid/content/Intent;)V

    .line 435
    return-void
.end method
