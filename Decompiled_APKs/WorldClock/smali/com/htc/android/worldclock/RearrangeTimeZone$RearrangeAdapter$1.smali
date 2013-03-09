.class Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->this$1:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    iput p2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->val$selectedPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 298
    const-string v1, "setOnClickListener"

    invoke-static {v1}, Lcom/htc/android/worldclock/htclog/HtcLog;->v(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->this$1:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    if-nez v1, :cond_0

    .line 305
    .end local p1
    :goto_0
    return-void

    .line 302
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 303
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->this$1:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    #calls: Lcom/htc/android/worldclock/RearrangeTimeZone;->handleDeleteCount(Z)V
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/RearrangeTimeZone;->access$200(Lcom/htc/android/worldclock/RearrangeTimeZone;Z)V

    .line 304
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->this$1:Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    iget v2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$RearrangeAdapter$1;->val$selectedPosition:I

    aput-boolean v0, v1, v2

    goto :goto_0
.end method
