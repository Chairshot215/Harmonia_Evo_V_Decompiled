.class public Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;
.super Ljava/lang/Object;
.source "QXDM2SD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/QXDM2SD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiagInfo"
.end annotation


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLogHeader:Ljava/lang/String;

.field private mLogName:Ljava/lang/String;

.field private mLogSize:J

.field private mMask:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNode:Ljava/lang/String;

.field private mNullMask:Ljava/lang/String;

.field private mPhoneType:I

.field private mRunning:Z

.field private mStartAT:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mStopAT:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;


# direct methods
.method public constructor <init>(Lcom/htc/android/qxdm2sd/QXDM2SD;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "name"
    .parameter "node"
    .parameter "phone_type"
    .parameter "start_at"
    .parameter "stop_at"
    .parameter "log_header"
    .parameter "mask"
    .parameter "nullmask"

    .prologue
    const/4 v2, 0x0

    .line 230
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mName:Ljava/lang/String;

    .line 233
    iput-object p3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNode:Ljava/lang/String;

    .line 234
    iput p4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mPhoneType:I

    .line 235
    iput-object p5, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStartAT:Ljava/lang/String;

    .line 236
    iput-object p6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStopAT:Ljava/lang/String;

    .line 237
    iput-object p7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogHeader:Ljava/lang/String;

    .line 238
    iput-object p8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    .line 239
    iput-object p9, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogSize:J

    .line 242
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogName:Ljava/lang/String;

    .line 243
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    .line 247
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    .line 248
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 249
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 250
    return-void
.end method


# virtual methods
.method public attachLayout(Landroid/content/Context;Landroid/widget/LinearLayout;)Z
    .locals 2
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 298
    :goto_0
    return v0

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    .line 292
    iput-object p2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 294
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 295
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 298
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public cleanProp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogSize:J

    .line 279
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogName:Ljava/lang/String;

    .line 280
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    .line 281
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    .line 282
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    .line 284
    return-void
.end method

.method public detachLayout()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 307
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLayout:Landroid/widget/LinearLayout;

    .line 309
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    .line 310
    iput-object v2, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    .line 311
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getNode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNode:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNullMask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mPhoneType:I

    return v0
.end method

.method public getStartATCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStartAT:Ljava/lang/String;

    return-object v0
.end method

.method public getStopATCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStopAT:Ljava/lang/String;

    return-object v0
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    return-void
.end method

.method public setNullMask(Ljava/lang/String;)V
    .locals 0
    .parameter "nullmask"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    return-void
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    return-void
.end method

.method public updateInfo()V
    .locals 12

    .prologue
    const/high16 v11, -0x1

    const v10, -0x777778

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 316
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v3, :cond_0

    .line 413
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 331
    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    if-nez v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 335
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$500(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    :goto_2
    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    .line 336
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ".dat"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "_null.dat"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    .line 339
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mStoragePath:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$500(Lcom/htc/android/qxdm2sd/QXDM2SD;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mContext:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nullmask ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 342
    const-string v3, "QXDM2SD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nullmask ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/htc/android/qxdm2sd/Device$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iput-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    .line 344
    iput-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    .line 348
    :cond_2
    iget-object v7, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mNullMask:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, diagStatus:[Ljava/lang/String;
    iput-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    .line 353
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$800(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_8

    .line 355
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->this$0:Lcom/htc/android/qxdm2sd/QXDM2SD;

    #getter for: Lcom/htc/android/qxdm2sd/QXDM2SD;->mAllDiagStatus:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/android/qxdm2sd/QXDM2SD;->access$800(Lcom/htc/android/qxdm2sd/QXDM2SD;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    array-length v3, v0

    const/4 v6, 0x2

    if-ge v3, v6, :cond_7

    .line 353
    :cond_3
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v0           #diagStatus:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_4
    move v3, v5

    .line 331
    goto/16 :goto_1

    :cond_5
    move-object v3, v6

    .line 335
    goto/16 :goto_2

    :cond_6
    move v3, v5

    .line 348
    goto :goto_3

    .line 359
    .restart local v0       #diagStatus:[Ljava/lang/String;
    .restart local v1       #i:I
    :cond_7
    aget-object v3, v0, v5

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getNode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 362
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-ne v3, v4, :cond_3

    .line 365
    iget-boolean v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    if-ne v3, v4, :cond_3

    .line 368
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    .line 369
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogHeader:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 370
    .local v2, ret:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 372
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mLogName:Ljava/lang/String;

    goto :goto_5

    .line 375
    .end local v2           #ret:I
    :cond_8
    iget-object v4, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Node: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->getNode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nMask: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nStatus: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    if-nez v3, :cond_a

    const-string v3, "not running"

    :goto_7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-boolean v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mRunning:Z

    if-eqz v3, :cond_f

    .line 381
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_b

    .line 383
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 375
    :cond_9
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mMask:Ljava/lang/String;

    goto :goto_6

    :cond_a
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    goto :goto_7

    .line 385
    :cond_b
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 387
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 389
    :cond_c
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 391
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 393
    :cond_d
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mStatus:Ljava/lang/String;

    const-string v4, "no data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 395
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 399
    :cond_e
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    const v4, -0xff0100

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 404
    :cond_f
    invoke-virtual {p0}, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 406
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0

    .line 410
    :cond_10
    iget-object v3, p0, Lcom/htc/android/qxdm2sd/QXDM2SD$DiagInfo;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto/16 :goto_0
.end method
