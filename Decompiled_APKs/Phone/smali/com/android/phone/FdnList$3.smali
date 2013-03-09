.class Lcom/android/phone/FdnList$3;
.super Ljava/lang/Object;
.source "FdnList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnList;->showFdnMenuDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FdnList;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnList;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 345
    add-int/lit8 v0, p2, 0x1

    .line 346
    .local v0, item:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    iget-object v2, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->mPosition:I
    invoke-static {v2}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v2

    #calls: Lcom/android/phone/FdnList;->placeCall(I)V
    invoke-static {v1, v2}, Lcom/android/phone/FdnList;->access$100(Lcom/android/phone/FdnList;I)V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    #calls: Lcom/android/phone/FdnList;->addContact()V
    invoke-static {v1}, Lcom/android/phone/FdnList;->access$200(Lcom/android/phone/FdnList;)V

    goto :goto_0

    .line 350
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 351
    iget-object v1, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    iget-object v2, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->mPosition:I
    invoke-static {v2}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v2

    #calls: Lcom/android/phone/FdnList;->editSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/FdnList;->access$300(Lcom/android/phone/FdnList;I)V

    goto :goto_0

    .line 352
    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    iget-object v2, p0, Lcom/android/phone/FdnList$3;->this$0:Lcom/android/phone/FdnList;

    #getter for: Lcom/android/phone/FdnList;->mPosition:I
    invoke-static {v2}, Lcom/android/phone/FdnList;->access$000(Lcom/android/phone/FdnList;)I

    move-result v2

    #calls: Lcom/android/phone/FdnList;->deleteSelected(I)V
    invoke-static {v1, v2}, Lcom/android/phone/FdnList;->access$400(Lcom/android/phone/FdnList;I)V

    goto :goto_0
.end method
