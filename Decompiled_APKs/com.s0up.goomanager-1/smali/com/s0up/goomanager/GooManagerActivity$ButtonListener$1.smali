.class Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;
.super Ljava/lang/Object;
.source "GooManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;->this$1:Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;->this$1:Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;

    #getter for: Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;
    invoke-static {v0}, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->access$0(Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;)Lcom/s0up/goomanager/GooManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/s0up/goomanager/GooManagerActivity;->adapter:Lcom/s0up/goomanager/LazyAdapter;

    iget-object v0, v0, Lcom/s0up/goomanager/LazyAdapter;->imageLoader:Lcom/s0up/goomanager/ImageLoader;

    invoke-virtual {v0}, Lcom/s0up/goomanager/ImageLoader;->clearCache()V

    .line 237
    iget-object v0, p0, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener$1;->this$1:Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;

    #getter for: Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->this$0:Lcom/s0up/goomanager/GooManagerActivity;
    invoke-static {v0}, Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;->access$0(Lcom/s0up/goomanager/GooManagerActivity$ButtonListener;)Lcom/s0up/goomanager/GooManagerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/s0up/goomanager/GooManagerActivity;->adapter:Lcom/s0up/goomanager/LazyAdapter;

    invoke-virtual {v0}, Lcom/s0up/goomanager/LazyAdapter;->notifyDataSetChanged()V

    .line 238
    return-void
.end method
