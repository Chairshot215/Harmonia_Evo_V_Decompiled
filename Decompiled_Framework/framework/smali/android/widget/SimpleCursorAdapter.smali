.class public Landroid/widget/SimpleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroid/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    return-void
.end method

.method private findColumns([Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    array-length v0, p1

    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    :cond_0
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    iget-object v3, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    aget-object v4, p1, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    iget-object v8, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    array-length v2, v8

    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    iget-object v6, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget v8, v6, v4

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget v8, v3, v4

    invoke-interface {v0, v7, p3, v8}, Landroid/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    aget v8, v3, v4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    if-eqz v8, :cond_3

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {p0, v7, v5}, Landroid/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    if-eqz v8, :cond_4

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v5}, Landroid/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1

    iput-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getCursorToStringConverter()Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    return-object v0
.end method
