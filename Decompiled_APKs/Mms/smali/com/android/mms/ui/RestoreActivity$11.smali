.class Lcom/android/mms/ui/RestoreActivity$11;
.super Ljava/lang/Object;
.source "RestoreActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RestoreActivity;->displayConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/RestoreActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$11;->this$0:Lcom/android/mms/ui/RestoreActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1231
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/RestoreActivity;->access$002(Z)Z

    .line 1232
    return-void
.end method
