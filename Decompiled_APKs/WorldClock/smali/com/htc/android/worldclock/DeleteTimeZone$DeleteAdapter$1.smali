.class Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;
.super Ljava/lang/Object;
.source "DeleteTimeZone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    iput p2, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->val$selectedPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    if-nez v1, :cond_0

    .line 228
    .end local p1
    :goto_0
    return-void

    .line 225
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 226
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    #calls: Lcom/htc/android/worldclock/DeleteTimeZone;->handleDeleteCount(Z)V
    invoke-static {v1, v0}, Lcom/htc/android/worldclock/DeleteTimeZone;->access$100(Lcom/htc/android/worldclock/DeleteTimeZone;Z)V

    .line 227
    iget-object v1, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->this$1:Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter;->this$0:Lcom/htc/android/worldclock/DeleteTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/DeleteTimeZone;->mDeletedIndex:[Z

    iget v2, p0, Lcom/htc/android/worldclock/DeleteTimeZone$DeleteAdapter$1;->val$selectedPosition:I

    aput-boolean v0, v1, v2

    goto :goto_0
.end method
