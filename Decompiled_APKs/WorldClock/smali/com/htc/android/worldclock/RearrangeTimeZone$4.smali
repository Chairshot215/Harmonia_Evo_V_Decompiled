.class Lcom/htc/android/worldclock/RearrangeTimeZone$4;
.super Ljava/lang/Object;
.source "RearrangeTimeZone.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/RearrangeTimeZone;->updateRearrangeZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/RearrangeTimeZone;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    if-nez v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v2, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v1, v1, p3

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, p3

    .line 194
    const v1, 0x7f0b0048

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 195
    .local v0, cb:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v1, v1, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 196
    iget-object v1, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v2, p0, Lcom/htc/android/worldclock/RearrangeTimeZone$4;->this$0:Lcom/htc/android/worldclock/RearrangeTimeZone;

    iget-object v2, v2, Lcom/htc/android/worldclock/RearrangeTimeZone;->mDeletedIndex:[Z

    aget-boolean v2, v2, p3

    #calls: Lcom/htc/android/worldclock/RearrangeTimeZone;->handleDeleteCount(Z)V
    invoke-static {v1, v2}, Lcom/htc/android/worldclock/RearrangeTimeZone;->access$200(Lcom/htc/android/worldclock/RearrangeTimeZone;Z)V

    goto :goto_0

    .line 193
    .end local v0           #cb:Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
