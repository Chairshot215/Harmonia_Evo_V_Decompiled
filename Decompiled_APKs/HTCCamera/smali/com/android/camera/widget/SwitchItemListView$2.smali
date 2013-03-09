.class Lcom/android/camera/widget/SwitchItemListView$2;
.super Ljava/lang/Object;
.source "SwitchItemListView.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SwitchItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SwitchItemListView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SwitchItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SwitchItemListView$2;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$2;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #calls: Lcom/android/camera/widget/SwitchItemListView;->updateStateForNewMode()V
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$200(Lcom/android/camera/widget/SwitchItemListView;)V

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$2;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SwitchItemListView$2;->this$0:Lcom/android/camera/widget/SwitchItemListView;

    #getter for: Lcom/android/camera/widget/SwitchItemListView;->mMenuAdapter:Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;
    invoke-static {v0}, Lcom/android/camera/widget/SwitchItemListView;->access$100(Lcom/android/camera/widget/SwitchItemListView;)Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/SwitchItemListView$SwitchItemAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
