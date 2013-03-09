.class Lcom/android/smith/CollectLogs$4;
.super Ljava/lang/Object;
.source "CollectLogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/CollectLogs;


# direct methods
.method constructor <init>(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lcom/android/smith/CollectLogs$4;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 762
    if-nez p2, :cond_1

    .line 764
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/smith/CollectLogs$4;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$2700(Lcom/android/smith/CollectLogs;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/smith/CollectLogs$4;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mThreadCheckbox:[Z
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$2700(Lcom/android/smith/CollectLogs;)[Z

    move-result-object v1

    aput-boolean p3, v1, v0

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 771
    iget-object v1, p0, Lcom/android/smith/CollectLogs$4;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->createListDialog()V
    invoke-static {v1}, Lcom/android/smith/CollectLogs;->access$2800(Lcom/android/smith/CollectLogs;)V

    .line 773
    .end local v0           #i:I
    :cond_1
    return-void
.end method
