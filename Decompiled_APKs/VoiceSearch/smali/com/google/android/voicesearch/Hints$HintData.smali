.class public Lcom/google/android/voicesearch/Hints$HintData;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/Hints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintData"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "title"
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/google/android/voicesearch/Hints$HintData;->mTitle:Ljava/lang/CharSequence;

    .line 271
    iput-object p2, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    .line 272
    iput-object p3, p0, Lcom/google/android/voicesearch/Hints$HintData;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 273
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
