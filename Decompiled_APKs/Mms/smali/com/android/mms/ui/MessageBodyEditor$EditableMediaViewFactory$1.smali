.class Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;
.super Ljava/lang/Object;
.source "MessageBodyEditor.java"

# interfaces
.implements Lcom/android/mms/view/EditableMediaView$OnPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->create(Landroid/content/Context;Lcom/android/mms/model/MediaModel;)Lcom/android/mms/view/EditableMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iput-object p2, p0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreview(Lcom/android/mms/model/MediaModel;)V
    .locals 16
    .parameter "media"

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "my_contact_card/0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 244
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageBodyEditor;->getCacheMyContactIds()J

    move-result-wide v14

    .line 248
    .local v14, mycardid:J
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-nez v1, :cond_2

    .line 249
    const-wide/16 v14, 0x1

    .line 250
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 251
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v11, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 253
    .end local v3           #uri:Landroid/net/Uri;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #mycardid:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "MessageBodyEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vcard uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 261
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 264
    const/4 v9, 0x0

    .line 265
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    .end local v11           #intent:Landroid/content/Intent;
    :goto_1
    if-eqz v9, :cond_0

    .line 286
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 272
    :cond_4
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    .local v8, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 275
    const v1, 0x7f0200d1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 276
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 277
    const v1, 0x7f0901b5

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 278
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    move-object/from16 v0, p1

    invoke-direct {v2, v4, v0}, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v8, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 281
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 282
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1

    .line 289
    .end local v8           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVCalendar()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    .restart local v11       #intent:Landroid/content/Intent;
    const-string v1, "beginTime"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getVCalBegin()J

    move-result-wide v4

    invoke-virtual {v11, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 296
    const-string v1, "endTime"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getVCalEnd()J

    move-result-wide v4

    invoke-virtual {v11, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 299
    const-string v1, "vCalendar"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 307
    .end local v11           #intent:Landroid/content/Intent;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 308
    .restart local v3       #uri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 309
    .local v12, isAbsPath:Z
    const/4 v13, 0x0

    .line 310
    .local v13, isValidUri:Z
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 311
    const/4 v12, 0x1

    .line 326
    :cond_7
    :goto_2
    if-nez v13, :cond_8

    const/4 v1, 0x1

    if-ne v12, v1, :cond_d

    .line 327
    :cond_8
    new-instance v11, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    const-string v1, "viewSingleImage"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    .line 341
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mEditorView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$200(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 344
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v1, v1, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    #getter for: Lcom/android/mms/ui/MessageBodyEditor;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageBodyEditor;->access$100(Lcom/android/mms/ui/MessageBodyEditor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 313
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 316
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_b

    .line 317
    const/4 v13, 0x1

    .line 319
    :cond_b
    if-eqz v9, :cond_7

    .line 320
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_2

    .line 334
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 335
    const-string v1, "landscape"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 346
    .end local v11           #intent:Landroid/content/Intent;
    :cond_d
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->val$context:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .restart local v8       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 349
    const v1, 0x7f0200d1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 350
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 351
    const v1, 0x7f0901b5

    invoke-virtual {v8, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 352
    const v1, 0x20c015f

    new-instance v2, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory$1;->this$1:Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;

    iget-object v4, v4, Lcom/android/mms/ui/MessageBodyEditor$EditableMediaViewFactory;->this$0:Lcom/android/mms/ui/MessageBodyEditor;

    move-object/from16 v0, p1

    invoke-direct {v2, v4, v0}, Lcom/android/mms/ui/MessageBodyEditor$RemoveMessageListener;-><init>(Lcom/android/mms/ui/MessageBodyEditor;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {v8, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 355
    const v1, 0x20c0164

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 356
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0
.end method
