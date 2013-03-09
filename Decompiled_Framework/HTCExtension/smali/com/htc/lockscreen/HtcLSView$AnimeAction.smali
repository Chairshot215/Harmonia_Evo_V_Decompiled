.class Lcom/htc/lockscreen/HtcLSView$AnimeAction;
.super Ljava/lang/Object;
.source "HtcLSView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcLSView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimeAction"
.end annotation


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field public mAnimeBitmapId:I

.field public mResId:I

.field private mTarget:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/lockscreen/HtcLSView;


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/HtcLSView;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->this$0:Lcom/htc/lockscreen/HtcLSView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iput p2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mResId:I

    iput p3, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimeBitmapId:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/HtcLSView;Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->this$0:Lcom/htc/lockscreen/HtcLSView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mResId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimeBitmapId:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    iget v2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mResId:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->this$0:Lcom/htc/lockscreen/HtcLSView;

    invoke-virtual {v2}, Lcom/htc/lockscreen/HtcLSView;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/htc/lockscreen/HtcLSViewGroup;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimeBitmapId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "HtcLSView"

    const-string v3, "AnimeAction can\'t find resource for target"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "HtcLSView"

    const-string v1, "AnimeAction can\'t find animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "HtcLSView"

    const-string v1, "AnimeAction not apply before start animation"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/lockscreen/HtcLSView$AnimeAction;->mAnimeBitmapId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
