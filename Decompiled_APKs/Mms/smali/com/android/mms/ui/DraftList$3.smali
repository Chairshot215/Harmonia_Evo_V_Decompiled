.class Lcom/android/mms/ui/DraftList$3;
.super Ljava/lang/Object;
.source "DraftList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftList;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/mms/ui/DraftList$3;->this$0:Lcom/android/mms/ui/DraftList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/mms/ui/DraftList$3;->this$0:Lcom/android/mms/ui/DraftList;

    iget-object v1, p0, Lcom/android/mms/ui/DraftList$3;->this$0:Lcom/android/mms/ui/DraftList;

    iget-object v2, p0, Lcom/android/mms/ui/DraftList$3;->this$0:Lcom/android/mms/ui/DraftList;

    #getter for: Lcom/android/mms/ui/DraftList;->mDuplicateCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/DraftList;->access$200(Lcom/android/mms/ui/DraftList;)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/DraftList;->deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 542
    return-void
.end method
