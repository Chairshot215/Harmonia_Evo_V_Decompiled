.class public Lcom/android/phone/htc/HtcDeferPersonActivity;
.super Landroid/app/Activity;
.source "HtcDeferPersonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;,
        Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACT_DATA_QUERY_CONDITION:Ljava/lang/String; = "contact_id = %d AND (mimetype=\'vnd.android.cursor.item/photo\' OR mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/name\')"

.field protected static final DEBUG:Z = false

.field protected static final DIALOG_ID_BASE:I = 0x32

.field private static final DIALOG_ID_PHONES:I = 0x1

.field private static final MSG_INVALID_VIEW:Ljava/lang/String; = "view %s is null"

.field private static final TAG:Ljava/lang/String; = "HtcPersonActivity"

.field private static final TOKEN_QUERY:I = 0x1


# instance fields
.field protected mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field protected mHasPhoto:Z

.field protected mImageView:Landroid/widget/ImageView;

.field protected mNameView:Landroid/widget/TextView;

.field protected mNumberView:Landroid/widget/Button;

.field private mPhoneAdapter:Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

.field protected mPhoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/util/CallDeferUtils$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->handleOnqueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method private static final concateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final createPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 366
    .local v1, result:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 367
    new-instance v1, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;

    .end local v1           #result:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    invoke-direct {v1}, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;-><init>()V

    .line 369
    .restart local v1       #result:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    const-string v3, "data1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 370
    .local v0, phoneIdx:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->number:Ljava/lang/String;

    .line 372
    const-string v3, "data2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, typeIdx:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->type:I

    .line 375
    iget v3, v1, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->type:I

    invoke-static {p0, v3}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->label:Ljava/lang/String;

    .line 380
    .end local v0           #phoneIdx:I
    .end local v2           #typeIdx:I
    :cond_0
    return-object v1
.end method

.method private handleOnqueryComplete(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x0

    .line 164
    const/4 v9, 0x0

    .line 166
    .local v9, querySuccess:Z
    if-eqz p1, :cond_7

    .line 167
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    iget-object v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, appContext:Landroid/content/Context;
    :cond_0
    const-string v10, "mimetype"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 174
    .local v2, mimeIdx:I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, mimeType:Ljava/lang/String;
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 176
    const-string v10, "data1"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, nameIdx:I
    iget-object v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 201
    .end local v4           #nameIdx:I
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 203
    const/4 v9, 0x1

    .line 206
    .end local v0           #appContext:Landroid/content/Context;
    .end local v2           #mimeIdx:I
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 215
    :goto_1
    if-eqz v9, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onQueryComplete()V

    .line 218
    :cond_3
    return-void

    .line 178
    .restart local v0       #appContext:Landroid/content/Context;
    .restart local v2       #mimeIdx:I
    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_4
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 180
    invoke-static {v0, p1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->createPhoneNumber(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/phone/util/CallDeferUtils$PhoneNumber;

    move-result-object v5

    .line 182
    .local v5, number:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    if-eqz v5, :cond_1

    .line 183
    iget-object v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v5           #number:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    :cond_5
    const-string v10, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 187
    const-string v10, "_id"

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, idIdx:I
    if-lez v1, :cond_1

    .line 189
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 190
    .local v7, photoId:J
    invoke-static {v7, v8, v13}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 192
    .local v6, photoBitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_6

    .line 193
    iget-object v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iput-object v13, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 195
    :cond_6
    iget-object v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v11, v12, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v11, v10, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 197
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mHasPhoto:Z

    goto :goto_0

    .line 211
    .end local v0           #appContext:Landroid/content/Context;
    .end local v1           #idIdx:I
    .end local v2           #mimeIdx:I
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v6           #photoBitmap:Landroid/graphics/Bitmap;
    .end local v7           #photoId:J
    :cond_7
    const-string v10, "HtcPersonActivity"

    const-string v11, "handleOnqueryComplete: no cursor"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static isViewValid(Landroid/view/View;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "viewName"

    .prologue
    .line 401
    const/4 v0, 0x1

    .line 402
    .local v0, valid:Z
    if-nez p0, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 407
    const-string v1, "HtcPersonActivity"

    const-string v2, "view %s is null"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    return v0
.end method

.method private onNumberClick()V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->showDialog(I)V

    .line 432
    return-void
.end method


# virtual methods
.method protected createPhonesDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, result:Landroid/app/Dialog;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0e00c4

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 339
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->getPhonesAdapter()Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

    move-result-object v0

    .line 340
    .local v0, adapter:Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;
    if-eqz v0, :cond_0

    .line 341
    new-instance v3, Lcom/android/phone/htc/HtcDeferPersonActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/htc/HtcDeferPersonActivity$1;-><init>(Lcom/android/phone/htc/HtcDeferPersonActivity;)V

    invoke-virtual {v1, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 356
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 358
    :cond_0
    return-object v2
.end method

.method protected findInitViews()V
    .locals 2

    .prologue
    .line 221
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNameView:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNameView:Landroid/widget/TextView;

    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->isViewValid(Landroid/view/View;Ljava/lang/String;)Z

    .line 224
    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    .line 225
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    const-string v1, "common_b_pulldown"

    invoke-static {v0, v1}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    const-string v1, "number"

    invoke-static {v0, v1}, Lcom/android/phone/htc/HtcDeferPersonActivity;->isViewValid(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_0
    const v0, 0x7f08005d

    invoke-virtual {p0, v0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mImageView:Landroid/widget/ImageView;

    .line 234
    return-void
.end method

.method protected getPhones()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 311
    const/4 v4, 0x0

    .line 313
    .local v4, phones:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 314
    .local v3, phoneSize:I
    if-lez v3, :cond_1

    .line 315
    new-array v4, v3, [Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 317
    iget-object v5, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;

    .line 318
    .local v2, phone:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    if-eqz v2, :cond_0

    .line 319
    iget-object v5, v2, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->label:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/phone/util/CallDeferUtils$PhoneNumber;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/phone/htc/HtcDeferPersonActivity;->concateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, labeledNumber:Ljava/lang/String;
    aput-object v1, v4, v0

    .line 316
    .end local v1           #labeledNumber:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    .end local v0           #index:I
    .end local v2           #phone:Lcom/android/phone/util/CallDeferUtils$PhoneNumber;
    :cond_1
    return-object v4
.end method

.method protected getPhonesAdapter()Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneAdapter:Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->getPhones()[Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, phones:[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 297
    new-instance v0, Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

    const v3, 0x20900ad

    const v4, 0x1020014

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;-><init>(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/content/Context;II[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneAdapter:Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

    .line 307
    .end local v5           #phones:[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneAdapter:Lcom/android/phone/htc/HtcDeferPersonActivity$PhoneAdapter;

    :goto_0
    return-object v0

    .line 303
    .restart local v5       #phones:[Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 417
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 424
    const-string v1, "HtcPersonActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :goto_0
    return-void

    .line 419
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->onNumberClick()V

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x7f0800c2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;-><init>(Lcom/android/phone/htc/HtcDeferPersonActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    .line 118
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, result:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    if-eqz v0, :cond_0

    .line 158
    .end local v0           #result:Landroid/app/Dialog;
    :goto_1
    return-object v0

    .line 147
    .restart local v0       #result:Landroid/app/Dialog;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->createPhonesDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;->cancelOperation(I)V

    .line 140
    :cond_0
    return-void
.end method

.method protected onQueryComplete()V
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->updateNameView()V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->updateNumberView()V

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->updatePhotoView()V

    .line 246
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mPhoneList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mQueryHandler:Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "contact_id = %d AND (mimetype=\'vnd.android.cursor.item/photo\' OR mimetype=\'vnd.android.cursor.item/phone_v2\' OR mimetype=\'vnd.android.cursor.item/name\')"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v7, v7, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/htc/HtcDeferPersonActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected updateNameView()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNameView:Landroid/widget/TextView;

    const v1, 0x7f0e022b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateNumberView()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, label:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v2, v2, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    if-lez v2, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/htc/HtcDeferPersonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    invoke-static {v2, v3}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortStringWithColon(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v2, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/phone/htc/HtcDeferPersonActivity;->concateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, labeledNumber:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mNumberView:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v0           #label:Ljava/lang/String;
    .end local v1           #labeledNumber:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected updatePhotoView()V
    .locals 4

    .prologue
    .line 263
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v2, v2, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mImageView:Landroid/widget/ImageView;

    const v1, 0x208025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 272
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/phone/htc/HtcDeferPersonActivity;->mImageView:Landroid/widget/ImageView;

    const v1, 0x2080846

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
