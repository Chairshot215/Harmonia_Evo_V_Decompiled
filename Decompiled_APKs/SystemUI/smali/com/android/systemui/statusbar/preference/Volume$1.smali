.class Lcom/android/systemui/statusbar/preference/Volume$1;
.super Ljava/lang/Object;
.source "Volume.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Volume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Volume;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Volume;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v1, 0x8

    const v2, 0x1

    const v3, 0x6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #getter for: Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Volume;->access$100(Lcom/android/systemui/statusbar/preference/Volume;)I

    move-result v0

    if-eq v0, v3, :cond_0

    add-int v0, v0, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    #setter for: Lcom/android/systemui/statusbar/preference/Volume;->sStreamType:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/Volume;->access$102(Lcom/android/systemui/statusbar/preference/Volume;I)V

    sget-object v1, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_SETTINGS:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/Volume;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/Volume;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/statusbar/preference/Volume;->VOLUME_ICONS:[I

    aget v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/Volume;->onStop()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/Volume;->onStart()V

    return-void

    :cond_0
    const v0, 0x0

    goto :goto_0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Volume;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Volume$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/Volume;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.SOUND_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Volume$1;->this$0:Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Volume;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
