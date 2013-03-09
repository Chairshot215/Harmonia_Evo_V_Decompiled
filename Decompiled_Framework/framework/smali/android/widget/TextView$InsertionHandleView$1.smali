.class Landroid/widget/TextView$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionHandleView;->hidePasteAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionHandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->hidePasteWidow()V

    return-void
.end method
