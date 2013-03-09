.class public Lcom/android/mms/ui/MessagingShortcut;
.super Landroid/app/Activity;
.source "MessagingShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingShortcut$BubbleStates;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTEGER:I = -0x1

.field private static final LOCAL_LOGV:Z = true

.field private static final MSG_UNREAD_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_UNREAD_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MessagingShortcut"

.field private static mMsgBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

.field public static mPresentUnreadCount:I

.field public static mPresentVvmUnreadCount:I

.field private static final mUpdateShortcutLock:Ljava/lang/Object;

.field private static final mUpdateVvmShortcutLock:Ljava/lang/Object;

.field private static mVvmBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 41
    sput v0, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    .line 42
    sput v0, Lcom/android/mms/ui/MessagingShortcut;->mPresentVvmUnreadCount:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->mUpdateShortcutLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->mUpdateVvmShortcutLock:Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DEFAULT:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->mMsgBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    .line 48
    sget-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DEFAULT:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->mVvmBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    .line 78
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sum (unread_count)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->MSG_UNREAD_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count (read)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/ui/MessagingShortcut;->SMS_UNREAD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    return-void
.end method

.method private static getBubbleState(I)Lcom/android/mms/ui/MessagingShortcut$BubbleStates;
    .locals 1
    .parameter "count"

    .prologue
    .line 472
    if-lez p0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->ENABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    .line 473
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessagingShortcut$BubbleStates;->DISABLE:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    goto :goto_0
.end method

.method private static getSmsUnReadCount(Landroid/content/Context;Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "resolver"

    .prologue
    const/4 v5, 0x0

    .line 114
    sget-object v0, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 115
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v4, "read=0"

    .line 116
    .local v4, selection:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessagingShortcut;->SMS_UNREAD_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getUnReadCount(Landroid/content/Context;)I
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 83
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 85
    .local v8, count:I
    const/4 v10, 0x0

    .line 91
    .local v10, cursor:Landroid/database/Cursor;
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 92
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v2, "true"

    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    const-string v0, "category"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessagingShortcut;->MSG_UNREAD_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 99
    if-nez v10, :cond_0

    move v9, v8

    .line 110
    .end local v8           #count:I
    .local v9, count:I
    :goto_0
    return v9

    .line 104
    .end local v9           #count:I
    .restart local v8       #count:I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 108
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 110
    .end local v8           #count:I
    .restart local v9       #count:I
    goto :goto_0
.end method

.method public static getUnReadCountbyCategory(Landroid/content/Context;I)I
    .locals 11
    .parameter "context"
    .parameter "category"

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 123
    .local v8, count:I
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 124
    .local v7, builder:Landroid/net/Uri$Builder;
    const-string v0, "simple"

    const-string v2, "true"

    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    const-string v0, "category"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessagingShortcut;->MSG_UNREAD_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 127
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v9, v8

    .line 138
    .end local v8           #count:I
    .local v9, count:I
    :goto_0
    return v9

    .line 132
    .end local v9           #count:I
    .restart local v8       #count:I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 136
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 138
    .end local v8           #count:I
    .restart local v9       #count:I
    goto :goto_0
.end method

.method private static declared-synchronized setMsgShortcutDrawable(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;I)V
    .locals 18
    .parameter "context"
    .parameter "sFactory"
    .parameter "unReadCount"

    .prologue
    .line 164
    const-class v17, Lcom/android/mms/ui/MessagingShortcut;

    monitor-enter v17

    :try_start_0
    const-string v2, "MessagingShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMsgShortcutDrawable> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-nez p1, :cond_0

    new-instance v15, Lcom/android/mms/util/IconGenerator;

    invoke-direct {v15}, Lcom/android/mms/util/IconGenerator;-><init>()V

    .end local p1
    .local v15, sFactory:Lcom/android/mms/util/IconGenerator;
    move-object/from16 p1, v15

    .line 167
    .end local v15           #sFactory:Lcom/android/mms/util/IconGenerator;
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, mTitle:Ljava/lang/String;
    if-lez p2, :cond_2

    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 171
    .local v13, res:Landroid/content/res/Resources;
    const/4 v14, 0x0

    .line 172
    .local v14, resId:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    sget-object v2, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_NOTIFICATION_NEW_BALL:Ljava/lang/String;

    const v3, 0x7f020116

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 183
    :goto_0
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 186
    .local v5, drawNotify:Landroid/graphics/drawable/Drawable;
    const v2, 0x7f020142

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/util/IconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 193
    .end local v5           #drawNotify:Landroid/graphics/drawable/Drawable;
    .end local v13           #res:Landroid/content/res/Resources;
    .end local v14           #resId:I
    .local v7, bmp:Landroid/graphics/Bitmap;
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v16, selArg:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    const-string v2, "%"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.ui.MessageTabActivity%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "intent like ?"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 210
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingShortcut;->updateLockScreenBroadcast(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit v17

    return-void

    .line 179
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v16           #selArg:Ljava/lang/StringBuilder;
    .restart local v13       #res:Landroid/content/res/Resources;
    .restart local v14       #resId:I
    :cond_1
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getNotificationBallResource(Landroid/content/Context;)I

    move-result v14

    goto :goto_0

    .line 190
    .end local v13           #res:Landroid/content/res/Resources;
    .end local v14           #resId:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020142

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bmp:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 203
    .restart local v16       #selArg:Ljava/lang/StringBuilder;
    :cond_3
    const-string v2, "%"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.ui.ConversationList%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "intent like ?"

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v2

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 164
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v12           #mTitle:Ljava/lang/String;
    .end local v16           #selArg:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method private static declared-synchronized setMsgShortcutDrawable_Sense35(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;II)V
    .locals 22
    .parameter "context"
    .parameter "sFactory"
    .parameter "unReadCount"
    .parameter "BmpType"

    .prologue
    .line 293
    const-class v21, Lcom/android/mms/ui/MessagingShortcut;

    monitor-enter v21

    :try_start_0
    const-string v3, "MessagingShortcut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMsgShortcutDrawable> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    const v15, 0x7f020143

    .line 296
    .local v15, iconid:I
    :goto_0
    if-nez p1, :cond_0

    new-instance v19, Lcom/android/mms/util/IconGenerator;

    invoke-direct/range {v19 .. v19}, Lcom/android/mms/util/IconGenerator;-><init>()V

    .end local p1
    .local v19, sFactory:Lcom/android/mms/util/IconGenerator;
    move-object/from16 p1, v19

    .line 297
    .end local v19           #sFactory:Lcom/android/mms/util/IconGenerator;
    .restart local p1
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 298
    .local v16, mTitle:Ljava/lang/String;
    if-lez p2, :cond_4

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 300
    .local v17, res:Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 301
    .local v18, resId:I
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 303
    sget-object v3, Lcom/android/mms/ui/MessageUtils$SkinUtil;->RES_NOTIFICATION_NEW_BALL:Ljava/lang/String;

    const v4, 0x7f020116

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v18

    .line 311
    :cond_1
    :goto_1
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 314
    .local v6, drawNotify:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, -0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/util/IconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 321
    .end local v6           #drawNotify:Landroid/graphics/drawable/Drawable;
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v18           #resId:I
    .local v8, bmp:Landroid/graphics/Bitmap;
    :goto_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v20, selArg:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 323
    const-string v3, "%"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.ui.MessageTabActivity%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "intent like ?"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    const/4 v13, 0x1

    :goto_3
    const v14, 0x7fffffff

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v14}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 343
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v15}, Lcom/android/mms/ui/MessagingShortcut;->updateLockScreenBroadcast(Landroid/content/Context;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit v21

    return-void

    .line 295
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v15           #iconid:I
    .end local v16           #mTitle:Ljava/lang/String;
    .end local v20           #selArg:Ljava/lang/StringBuilder;
    :cond_2
    const v15, 0x7f020142

    goto/16 :goto_0

    .line 306
    .restart local v15       #iconid:I
    .restart local v16       #mTitle:Ljava/lang/String;
    .restart local v17       #res:Landroid/content/res/Resources;
    .restart local v18       #resId:I
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 308
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getNotificationBallResource(Landroid/content/Context;)I

    move-result v18

    goto :goto_1

    .line 318
    .end local v17           #res:Landroid/content/res/Resources;
    .end local v18           #resId:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 325
    .restart local v20       #selArg:Ljava/lang/StringBuilder;
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 333
    :cond_6
    const-string v3, "%"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/.ui.ConversationList%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "intent like ?"

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    const/4 v13, 0x1

    :goto_5
    const v14, 0x7fffffff

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v14}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 293
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    .end local v15           #iconid:I
    .end local v16           #mTitle:Ljava/lang/String;
    .end local v20           #selArg:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit v21

    throw v3

    .line 336
    .restart local v8       #bmp:Landroid/graphics/Bitmap;
    .restart local v15       #iconid:I
    .restart local v16       #mTitle:Ljava/lang/String;
    .restart local v20       #selArg:Ljava/lang/StringBuilder;
    :cond_7
    const/4 v13, 0x0

    goto :goto_5
.end method

.method private static setVvmShortcutDrawable(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;I)V
    .locals 11
    .parameter "context"
    .parameter "sFactory"
    .parameter "unreadCount"

    .prologue
    const/4 v6, 0x0

    const v1, 0x7f0201a8

    .line 144
    const/4 v5, 0x0

    .line 145
    .local v5, bmp:Landroid/graphics/Bitmap;
    if-lez p2, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 147
    .local v10, res:Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getNotificationBallResource(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 150
    .local v3, drawNotify:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, -0x1

    move-object v0, p1

    move-object v1, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/util/IconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    .end local v5           #bmp:Landroid/graphics/Bitmap;
    move-result-object v5

    .line 156
    .end local v3           #drawNotify:Landroid/graphics/drawable/Drawable;
    .end local v10           #res:Landroid/content/res/Resources;
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    :goto_0
    const-string v8, "intent like ?"

    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "%.ui.VoiceMailTabActivity%"

    aput-object v1, v9, v0

    move-object v4, p0

    move-object v7, v6

    invoke-static/range {v4 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 158
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private setupShortcut()V
    .locals 5

    .prologue
    .line 478
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v2, shortcutIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    const-string v3, "com.android.mms.ui.MessageTabActivity"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAppLable()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingShortcut;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :try_start_0
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f020142

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_1
    const-string v3, "duplicate"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    const-string v3, "com.htc.launcher.action.ACTION_ITEM_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    const-string v3, "favorite_intent"

    const-string v4, "InstallMessagingShortcut"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingShortcut;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/mms/ui/MessagingShortcut;->setResult(ILandroid/content/Intent;)V

    .line 504
    return-void

    .line 484
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 496
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MessagingShortcut"

    const-string v4, "loadContactPhoto: exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static updateLockScreenBroadcast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "count"

    .prologue
    .line 216
    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessagingShortcut;->updateLockScreenBroadcast(Landroid/content/Context;III)V

    .line 217
    return-void
.end method

.method public static updateLockScreenBroadcast(Landroid/content/Context;III)V
    .locals 5
    .parameter "context"
    .parameter "count"
    .parameter "bubble_style"
    .parameter "resourceId"

    .prologue
    const/4 v4, -0x1

    .line 221
    const-string v1, "MessagingShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send UNREAD_MESSAGE_COUNT broadcast: count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bubble:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.message.action.update_unread_message_count"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "unread_message_count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v1, "package_name"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    if-eq p2, v4, :cond_0

    .line 226
    const-string v1, "bubble_style"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    :cond_0
    if-eq p3, v4, :cond_1

    .line 228
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 229
    const-string v1, "icon_res"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 234
    return-void

    .line 231
    :cond_2
    const-string v1, "icon_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "unReadCount"
    .parameter "mTitle"

    .prologue
    .line 375
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessagingShortcut;->updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 376
    return-void
.end method

.method public static updateMessagingShortcut(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .parameter "context"
    .parameter "unReadCount"
    .parameter "mTitle"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 389
    const-string v1, "MessagingShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMessagingShortcut,bubble cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x0

    .line 395
    .local v0, unReadCounts:[I
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    if-eq p1, v4, :cond_0

    sget v1, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    if-eq v1, p1, :cond_1

    .line 398
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result p1

    .line 414
    :cond_1
    :goto_0
    const-string v1, "MessagingShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {p0, p1, p3}, Lcom/android/mms/ui/MessagingShortcut;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 419
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    if-nez v0, :cond_2

    .line 422
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 425
    :cond_2
    aget v1, v0, v6

    invoke-static {p0, v1, p3}, Lcom/android/mms/ui/MessagingShortcut;->updateVvmShortcut(Landroid/content/Context;IZ)V

    .line 427
    :cond_3
    return-void

    .line 402
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 404
    aget v1, v0, v5

    aget v2, v0, v6

    add-int p1, v1, v2

    goto :goto_0

    .line 406
    :cond_5
    if-eq p1, v4, :cond_6

    sget v1, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    if-eq v1, p1, :cond_1

    .line 408
    :cond_6
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v0

    .line 409
    aget p1, v0, v5

    goto :goto_0
.end method

.method public static updateMsgShortcut(Landroid/content/Context;IZ)V
    .locals 7
    .parameter "context"
    .parameter "count"
    .parameter "force"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 244
    const-string v2, "MessagingShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMsgShortcut, msg count> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v0, Lcom/android/mms/util/IconGenerator;

    invoke-direct {v0}, Lcom/android/mms/util/IconGenerator;-><init>()V

    .line 247
    .local v0, sFactory:Lcom/android/mms/util/IconGenerator;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 249
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgShortcutRule()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result p1

    .line 264
    :goto_0
    const-string v2, "MessagingShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After query: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessagingShortcut;->mUpdateShortcutLock:Ljava/lang/Object;

    monitor-enter v3

    .line 269
    :try_start_0
    const-string v2, "MessagingShortcut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPresentUnreadCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget v2, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_2

    .line 273
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSense35BubbleRule()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 274
    const-string v2, "MessagingShortcut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CurrentNewMsgCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v2, 0x63

    if-le p1, v2, :cond_5

    .line 276
    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result v2

    const/4 v4, 0x2

    invoke-static {p0, v0, v2, v4}, Lcom/android/mms/ui/MessagingShortcut;->setMsgShortcutDrawable_Sense35(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;II)V

    .line 282
    :goto_1
    sput p1, Lcom/android/mms/ui/MessagingShortcut;->mPresentUnreadCount:I

    .line 284
    :cond_2
    invoke-static {p1}, Lcom/android/mms/ui/MessagingShortcut;->getBubbleState(I)Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingShortcut;->mMsgBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    .line 285
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    return-void

    .line 254
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportVVMTab()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 255
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 256
    .local v1, unReadCounts:[I
    aget v2, v1, v5

    aget v3, v1, v6

    add-int p1, v2, v3

    .line 257
    goto/16 :goto_0

    .line 259
    .end local v1           #unReadCounts:[I
    :cond_4
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 260
    .restart local v1       #unReadCounts:[I
    aget p1, v1, v5

    goto/16 :goto_0

    .line 278
    .end local v1           #unReadCounts:[I
    :cond_5
    const/4 v2, 0x1

    :try_start_1
    invoke-static {p0, v0, p1, v2}, Lcom/android/mms/ui/MessagingShortcut;->setMsgShortcutDrawable_Sense35(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;II)V

    goto :goto_1

    .line 285
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 280
    :cond_6
    :try_start_2
    invoke-static {p0, v0, p1}, Lcom/android/mms/ui/MessagingShortcut;->setMsgShortcutDrawable(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static updateVvmShortcut(Landroid/content/Context;IZ)V
    .locals 6
    .parameter "context"
    .parameter "unReadCount"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    .line 352
    const-string v2, "MessagingShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVvmShortcut,vvm count> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/android/mms/util/IconGenerator;

    invoke-direct {v0}, Lcom/android/mms/util/IconGenerator;-><init>()V

    .line 356
    .local v0, sFactory:Lcom/android/mms/util/IconGenerator;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 357
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getAllMessagesUnreadCount(Landroid/content/Context;)[I

    move-result-object v1

    .line 358
    .local v1, unReadCounts:[I
    const-string v2, "MessagingShortcut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vvm count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    aget p1, v1, v5

    .line 362
    .end local v1           #unReadCounts:[I
    :cond_0
    sget-object v3, Lcom/android/mms/ui/MessagingShortcut;->mUpdateVvmShortcutLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_0
    const-string v2, "MessagingShortcut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "present vvm count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/ui/MessagingShortcut;->mPresentVvmUnreadCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    sget v2, Lcom/android/mms/ui/MessagingShortcut;->mPresentVvmUnreadCount:I

    if-ne v2, p1, :cond_1

    if-eqz p2, :cond_2

    .line 365
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/android/mms/ui/MessagingShortcut;->setVvmShortcutDrawable(Landroid/content/Context;Lcom/android/mms/util/IconGenerator;I)V

    .line 366
    sput p1, Lcom/android/mms/ui/MessagingShortcut;->mPresentVvmUnreadCount:I

    .line 368
    :cond_2
    invoke-static {p1}, Lcom/android/mms/ui/MessagingShortcut;->getBubbleState(I)Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingShortcut;->mVvmBubbleState:Lcom/android/mms/ui/MessagingShortcut$BubbleStates;

    .line 369
    monitor-exit v3

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingShortcut;->setupShortcut()V

    .line 58
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingShortcut;->finish()V

    .line 65
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    return-void
.end method
