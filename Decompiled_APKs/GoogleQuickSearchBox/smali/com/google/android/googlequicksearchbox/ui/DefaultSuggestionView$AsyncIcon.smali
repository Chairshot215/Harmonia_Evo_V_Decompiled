.class Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncIcon"
.end annotation


# instance fields
.field private mCurrentId:Ljava/lang/String;

.field private final mFallbackToSourceIcon:Z

.field private final mMaybeOverlaySourceIcon:Z

.field private final mReserveSpace:Z

.field private final mView:Landroid/widget/ImageView;

.field private mWantedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZZ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "fallbackToSourceIcon"
    .parameter "reserveSpace"
    .parameter "overlaySourceIcon"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    .line 230
    iput-boolean p3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mFallbackToSourceIcon:Z

    .line 231
    iput-boolean p4, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mReserveSpace:Z

    .line 232
    iput-boolean p5, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mMaybeOverlaySourceIcon:Z

    .line 233
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    return-void
.end method

.method private clearDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    return-void
.end method

.method private handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 7
    .parameter "icon"
    .parameter "id"
    .parameter "source"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f00

    .line 280
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mFallbackToSourceIcon:Z

    if-eqz v3, :cond_2

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 282
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 283
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 311
    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_2
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mMaybeOverlaySourceIcon:Z

    if-eqz v3, :cond_1

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->isTrusted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 291
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 293
    .local v2, sourceIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x55

    invoke-direct {v1, v3, v4, v5, v5}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    .line 302
    .local v1, scaled:Landroid/graphics/drawable/ScaleDrawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/ScaleDrawable;->setLevel(I)Z

    .line 303
    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ScaleDrawable;->setAlpha(I)V

    .line 304
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 305
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 307
    :cond_3
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v6

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 308
    .local v0, layers:Landroid/graphics/drawable/LayerDrawable;
    move-object p1, v0

    goto :goto_1
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter "icon"
    .parameter "id"

    .prologue
    .line 315
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mReserveSpace:Z

    #calls: Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V
    invoke-static {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->access$300(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 317
    return-void
.end method


# virtual methods
.method public set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
    .locals 4
    .parameter "source"
    .parameter "sourceIconId"

    .prologue
    const/4 v2, 0x0

    .line 236
    if-eqz p2, :cond_4

    .line 239
    if-nez p1, :cond_1

    move-object v1, p2

    .line 241
    .local v1, uniqueIconId:Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    if-eqz p1, :cond_2

    .line 246
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/Source;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 250
    .local v0, icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    :goto_1
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    .line 276
    .end local v0           #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #uniqueIconId:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 239
    :cond_1
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/util/Util;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 248
    .restart local v1       #uniqueIconId:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;

    #calls: Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getSelfIconLoader()Lcom/google/android/googlequicksearchbox/IconLoader;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->access$000(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;)Lcom/google/android/googlequicksearchbox/IconLoader;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/google/android/googlequicksearchbox/IconLoader;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    .restart local v0       #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    goto :goto_1

    .line 256
    :cond_3
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->clearDrawable()V

    .line 257
    new-instance v2, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    invoke-interface {v0, v2}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    goto :goto_2

    .line 273
    .end local v0           #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #uniqueIconId:Ljava/lang/String;
    :cond_4
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 274
    invoke-direct {p0, v2, v2, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    goto :goto_2
.end method
