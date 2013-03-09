.class Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "EditCellBroadcastChannelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditCellBroadcastChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddChannelDialog"
.end annotation


# instance fields
.field public final CONTENT_URI:Landroid/net/Uri;

.field public final DEFAULT_SORT_ORDER:Ljava/lang/String;

.field private final PROJECTION:[Ljava/lang/String;

.field private mChannelName:Landroid/widget/EditText;

.field private mChannelNumber:Landroid/widget/EditText;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIntent:Landroid/content/Intent;

.field mList:[Ljava/lang/String;

.field private mRowId:Ljava/lang/Long;

.field private mView:Landroid/view/View;

.field private mbconst:Z

.field final synthetic this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/EditCellBroadcastChannelActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 102
    iput-object p1, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    .line 103
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 92
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    .line 93
    iput-boolean v3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mbconst:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    .line 97
    const-string v0, "content://cbchannels/cbch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "channel DESC"

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->DEFAULT_SORT_ORDER:Ljava/lang/String;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "enable"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->PROJECTION:[Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mIntent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mIntent:Landroid/content/Intent;

    const-string v1, "constant"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mbconst:Z

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkCBChannel(Ljava/lang/String;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 315
    iget-object v3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    array-length v2, v3

    .line 317
    .local v2, size:I
    if-eqz v2, :cond_1

    .line 318
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 319
    iget-object v3, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 320
    .local v1, pattern:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    const/4 v3, 0x1

    .line 326
    .end local v0           #index:I
    .end local v1           #pattern:Ljava/lang/String;
    .end local v2           #size:I
    :goto_1
    return v3

    .line 318
    .restart local v0       #index:I
    .restart local v1       #pattern:Ljava/lang/String;
    .restart local v2       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v0           #index:I
    .end local v1           #pattern:Ljava/lang/String;
    .end local v2           #size:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleSave()V
    .locals 21

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, channel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 206
    .local v9, enable:Z
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 208
    .local v10, initialValues:Landroid/content/ContentValues;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_7

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->checkCBChannel(Ljava/lang/String;)Z

    move-result v11

    .line 212
    .local v11, isExist:Z
    invoke-static {v5}, Lcom/android/phone/util/CbsUtils;->isHiddenChannel(Ljava/lang/String;)Z

    move-result v12

    .line 213
    .local v12, isHidden:Z
    const/4 v4, 0x0

    .line 214
    .local v4, applyEdit:Z
    const-string v17, "EditCellBroadcastChannelActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "exist> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", hidden ch> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v17, "EditCellBroadcastChannelActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "row id> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "channel"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 220
    .local v16, oldCh:Ljava/lang/String;
    const/4 v13, 0x0

    .line 221
    .local v13, isSame:Z
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 222
    const/4 v13, 0x1

    .line 224
    :cond_0
    if-eqz v11, :cond_1

    if-eqz v13, :cond_2

    :cond_1
    if-nez v12, :cond_2

    .line 225
    const/4 v4, 0x1

    .line 228
    .end local v13           #isSame:Z
    .end local v16           #oldCh:Ljava/lang/String;
    :cond_2
    const-string v17, "EditCellBroadcastChannelActivity"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "applyEdit> "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_4

    if-eqz v4, :cond_4

    .line 233
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v17, "channel"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v18, "enable"

    if-eqz v9, :cond_3

    const/16 v17, 0x1

    :goto_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 238
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/phone/EditCellBroadcastChannelActivity;->setResult(ILandroid/content/Intent;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->finish()V

    .line 312
    .end local v4           #applyEdit:Z
    .end local v7           #count:I
    .end local v11           #isExist:Z
    .end local v12           #isHidden:Z
    :goto_1
    return-void

    .line 235
    .restart local v4       #applyEdit:Z
    .restart local v11       #isExist:Z
    .restart local v12       #isHidden:Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 244
    :cond_4
    if-nez v11, :cond_6

    if-nez v12, :cond_6

    .line 245
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v17, "channel"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v18, "enable"

    if-eqz v9, :cond_5

    const/16 v17, 0x1

    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 250
    .local v14, mUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/phone/EditCellBroadcastChannelActivity;->setResult(ILandroid/content/Intent;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->finish()V

    goto :goto_1

    .line 247
    .end local v14           #mUri:Landroid/net/Uri;
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 255
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->dismiss()V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v18}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$002(Lcom/android/phone/EditCellBroadcastChannelActivity;Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    .line 259
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    .local v6, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v17, 0x7f0e0044

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 261
    const v17, 0x7f0e003c

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 262
    const v17, 0x1040013

    new-instance v18, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$1;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 270
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 271
    .local v8, dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v17, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$2;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 281
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1

    .line 284
    .end local v4           #applyEdit:Z
    .end local v6           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v8           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v11           #isExist:Z
    .end local v12           #isHidden:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$000(Lcom/android/phone/EditCellBroadcastChannelActivity;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->dismiss()V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    #setter for: Lcom/android/phone/EditCellBroadcastChannelActivity;->mDialog:Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;
    invoke-static/range {v17 .. v18}, Lcom/android/phone/EditCellBroadcastChannelActivity;->access$002(Lcom/android/phone/EditCellBroadcastChannelActivity;Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;

    .line 288
    new-instance v6, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    .restart local v6       #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v17, 0x7f0e0043

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 290
    const v17, 0x7f0e003c

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 291
    const v17, 0x1040013

    new-instance v18, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$3;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 299
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    .line 300
    .restart local v8       #dialog:Lcom/htc/widget/HtcAlertDialog;
    new-instance v17, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog$4;-><init>(Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 310
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->handleSave()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EditCellBroadcastChannelActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v0}, Lcom/android/phone/EditCellBroadcastChannelActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mView:Landroid/view/View;

    .line 112
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setView(Landroid/view/View;)V

    .line 113
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {p0, v6}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 116
    const v6, 0x7f0e003c

    invoke-virtual {p0, v6}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setTitle(I)V

    .line 118
    iget-boolean v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mbconst:Z

    if-nez v6, :cond_3

    .line 119
    const/4 v6, -0x1

    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0040

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    :goto_0
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mView:Landroid/view/View;

    const v7, 0x7f08004b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    .line 126
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mView:Landroid/view/View;

    const v7, 0x7f08004d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    .line 127
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v6}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "input_text_selection_highlight"

    const-string v8, "color"

    iget-object v9, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v9}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "link_highlight"

    const-string v11, "color"

    const-string v12, "com.htc"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 128
    .local v2, highLightColor:I
    if-eqz v2, :cond_0

    .line 129
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 130
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 132
    :cond_0
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    const-string v7, "common_black_inputfield_view"

    invoke-static {v6, v7}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 133
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const-string v7, "common_black_inputfield_view"

    invoke-static {v6, v7}, Lcom/android/phone/theme/ThemeAdapter;->setBackground(Landroid/view/View;Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mView:Landroid/view/View;

    const v7, 0x7f08004e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 135
    const-string v6, "common_checkbox"

    const-string v7, "drawable"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 136
    .local v5, resid:I
    if-eqz v5, :cond_1

    .line 137
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v5}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 140
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 141
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 145
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_6

    .line 146
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v6}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "id"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    .line 147
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v6}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "constant"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mbconst:Z

    .line 148
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mRowId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v7}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "title"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v7}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "channel"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v6}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "enable"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 152
    .local v4, nEnable:I
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 153
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    .end local v4           #nEnable:I
    :goto_1
    iget-boolean v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mbconst:Z

    if-eqz v6, :cond_2

    .line 162
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 163
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 164
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 175
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->this$0:Lcom/android/phone/EditCellBroadcastChannelActivity;

    invoke-virtual {v6}, Lcom/android/phone/EditCellBroadcastChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    sget-object v7, Lcom/android/phone/util/CbsUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "channel DESC"

    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/phone/util/CbsUtils;->getConstantAndUserCbCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 178
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 179
    .local v0, count:I
    if-eqz v0, :cond_8

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    .line 182
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_7

    .line 183
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mList:[Ljava/lang/String;

    const-string v7, "channel"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 184
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 122
    .end local v0           #count:I
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #highLightColor:I
    .end local v3           #i:I
    .end local v5           #resid:I
    :cond_3
    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0e0140

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, p0}, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 155
    .restart local v2       #highLightColor:I
    .restart local v4       #nEnable:I
    .restart local v5       #resid:I
    :cond_4
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 158
    .end local v4           #nEnable:I
    :cond_5
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 168
    :cond_6
    iget-object v6, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 186
    .restart local v0       #count:I
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i:I
    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    .end local v3           #i:I
    :cond_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 190
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 191
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 336
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 337
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 341
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 342
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "name"

    iget-object v2, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 343
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mChannelNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 344
    const-string v1, "enable"

    iget-object v2, p0, Lcom/android/phone/EditCellBroadcastChannelActivity$AddChannelDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 345
    return-object v0
.end method
