.class Lcom/android/mms/ui/QTextDeleteActivity$1;
.super Ljava/lang/Object;
.source "QTextDeleteActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/QTextDeleteActivity;->initListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 176
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p3

    if-nez v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    aput-boolean v3, v2, p3

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$200(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :goto_0
    const/4 v1, 0x0

    .line 184
    .local v1, selectitem:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    if-ne v2, v3, :cond_0

    .line 186
    const/4 v1, 0x1

    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    .end local v0           #i:I
    .end local v1           #selectitem:Z
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->checkArray:[Z
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$100(Lcom/android/mms/ui/QTextDeleteActivity;)[Z

    move-result-object v2

    aput-boolean v4, v2, p3

    goto :goto_0

    .line 187
    .restart local v0       #i:I
    .restart local v1       #selectitem:Z
    :cond_2
    if-nez v1, :cond_3

    .line 188
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mCheckDeleteOk:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$200(Lcom/android/mms/ui/QTextDeleteActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/QTextDeleteActivity$1;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    #getter for: Lcom/android/mms/ui/QTextDeleteActivity;->mUIHandler:Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;
    invoke-static {v2}, Lcom/android/mms/ui/QTextDeleteActivity;->access$300(Lcom/android/mms/ui/QTextDeleteActivity;)Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/QTextDeleteActivity$UIHandler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method
