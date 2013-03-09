.class public Lcom/android/htccontacts/ui/widget/PhotoEditorView;
.super Landroid/widget/ImageView;
.source "PhotoEditorView.java"

# interfaces
.implements Lcom/android/htccontacts/model/Editor;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoEditorView"


# instance fields
.field private mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/htccontacts/model/Editor$EditorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 55
    return-void
.end method


# virtual methods
.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/htccontacts/model/Editor$EditorListener;->onRequest(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "column"
    .parameter "value"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Photos don\'t support direct field changes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 61
    invoke-virtual {p0, p0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method protected resetDefault()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    const v0, 0x2080534

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setImageResource(I)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 137
    return-void
.end method

.method public setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/htccontacts/model/Editor$EditorListener;

    .line 142
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .parameter "photo"

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 111
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v5, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 112
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->resetDefault()V

    .line 130
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 117
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 120
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sget v4, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 121
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 122
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 124
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PhotoEditorView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize photo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 4
    .parameter "kind"
    .parameter "values"
    .parameter "state"

    .prologue
    .line 78
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 79
    if-eqz p2, :cond_1

    .line 81
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 82
    .local v1, photoBytes:[B
    if-eqz v1, :cond_0

    .line 83
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    .local v0, photo:Landroid/graphics/Bitmap;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 88
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 95
    .end local v0           #photo:Landroid/graphics/Bitmap;
    .end local v1           #photoBytes:[B
    :goto_0
    return-void

    .line 90
    .restart local v1       #photoBytes:[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->resetDefault()V

    goto :goto_0

    .line 93
    .end local v1           #photoBytes:[B
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
