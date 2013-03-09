.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$1;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowNetWorkErrorMsg()V
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
    .line 319
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$1;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$1;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->finish()V

    .line 322
    return-void
.end method
