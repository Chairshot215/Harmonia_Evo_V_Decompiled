.class Lcom/htc/providers/uploads/uploadUI/FileDetailActivity$1;
.super Ljava/lang/Object;
.source "FileDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity$1;->this$0:Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity$1;->this$0:Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;

    invoke-virtual {v0}, Lcom/htc/providers/uploads/uploadUI/FileDetailActivity;->finish()V

    .line 117
    return-void
.end method
