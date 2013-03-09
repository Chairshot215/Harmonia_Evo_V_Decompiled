.class Lcom/android/mms/ui/ComposeMessageActivity$72;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12763
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 12766
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$72;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->perfromListItemClick(Landroid/view/View;)Z

    .line 12768
    instance-of v0, p2, Lcom/android/mms/view/MessageView;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/android/mms/view/MessageView;

    .end local p2
    sget-object v0, Lcom/android/mms/view/Event;->CLICKED_EVENT:Lcom/android/mms/view/Event;

    invoke-interface {p2, v0}, Lcom/android/mms/view/MessageView;->fireEvent(Lcom/android/mms/view/Event;)V

    .line 12769
    :cond_0
    return-void
.end method
