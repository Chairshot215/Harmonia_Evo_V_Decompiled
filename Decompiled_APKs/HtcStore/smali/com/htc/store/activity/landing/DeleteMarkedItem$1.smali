.class Lcom/htc/store/activity/landing/DeleteMarkedItem$1;
.super Ljava/lang/Object;
.source "DeleteMarkedItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/DeleteMarkedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;


# direct methods
.method constructor <init>(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$1;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/store/activity/landing/DeleteMarkedItem$1;->this$0:Lcom/htc/store/activity/landing/DeleteMarkedItem;

    #calls: Lcom/htc/store/activity/landing/DeleteMarkedItem;->doConfirm()V
    invoke-static {v0}, Lcom/htc/store/activity/landing/DeleteMarkedItem;->access$100(Lcom/htc/store/activity/landing/DeleteMarkedItem;)V

    .line 144
    return-void
.end method
