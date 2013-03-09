.class Lcom/android/mms/ui/DeleteBySelectActivity$4;
.super Ljava/lang/Object;
.source "DeleteBySelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DeleteBySelectActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DeleteBySelectActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DeleteBySelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/android/mms/ui/DeleteBySelectActivity$4;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/mms/ui/DeleteBySelectActivity$4;->this$0:Lcom/android/mms/ui/DeleteBySelectActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/DeleteBySelectActivity;->finish()V

    .line 800
    return-void
.end method
