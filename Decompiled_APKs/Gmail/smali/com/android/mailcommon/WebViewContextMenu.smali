.class public abstract Lcom/android/mailcommon/WebViewContextMenu;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mailcommon/WebViewContextMenu$Share;,
        Lcom/android/mailcommon/WebViewContextMenu$Copy;,
        Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;,
        Lcom/android/mailcommon/WebViewContextMenu$MenuType;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mailcommon/WebViewContextMenu;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/mailcommon/WebViewContextMenu;->shareLink(Ljava/lang/String;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 140
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 141
    return-void
.end method

.method private shareLink(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {p0, v3}, Lcom/android/mailcommon/WebViewContextMenu;->getChooserTitleStringResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showShareLinkMenuItem()Z
    .locals 4

    .prologue
    .line 117
    iget-object v3, p0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, send:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 121
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getChooserTitleStringResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
.end method

.method protected abstract getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I
.end method

.method protected abstract getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
.end method

.method protected abstract getMenuResourceId()I
.end method

.method protected abstract getTitleViewLayoutResId(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 25
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    .line 148
    move-object/from16 v19, p2

    check-cast v19, Landroid/webkit/WebView;

    .line 149
    .local v19, webview:Landroid/webkit/WebView;
    invoke-virtual/range {v19 .. v19}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v14

    .line 150
    .local v14, result:Landroid/webkit/WebView$HitTestResult;
    if-nez v14, :cond_0

    .line 297
    :goto_0
    :sswitch_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v17

    .line 155
    .local v17, type:I
    sparse-switch v17, :sswitch_data_0

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v11

    .line 169
    .local v11, inflater:Landroid/view/MenuInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResourceId()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 173
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/view/ContextMenu;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_1

    .line 174
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/view/ContextMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 175
    .local v12, menuItem:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 173
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 180
    .end local v12           #menuItem:Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {v14}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, extra:Ljava/lang/String;
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I

    move-result v21

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 183
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I

    move-result v21

    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 185
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I

    move-result v21

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 187
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuGroupResId(Lcom/android/mailcommon/WebViewContextMenu$MenuGroupType;)I

    move-result v21

    const/16 v20, 0x7

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v20, 0x8

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 192
    packed-switch v17, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 196
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 203
    .local v5, decodedPhoneExtra:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 205
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 208
    .local v6, dialMenuItem:Landroid/view/MenuItem;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tel:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 213
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 216
    .local v15, sendSmsMenuItem:Landroid/view/MenuItem;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 217
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.SENDTO"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "smsto:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 221
    new-instance v3, Landroid/content/Intent;

    const-string v20, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v3, addIntent:Landroid/content/Intent;
    const-string v20, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v20, "phone"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 228
    .local v4, addToContactsMenuItem:Landroid/view/MenuItem;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 229
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 232
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Lcom/android/mailcommon/WebViewContextMenu$Copy;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$Copy;-><init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 181
    .end local v3           #addIntent:Landroid/content/Intent;
    .end local v4           #addToContactsMenuItem:Landroid/view/MenuItem;
    .end local v5           #decodedPhoneExtra:Ljava/lang/String;
    .end local v6           #dialMenuItem:Landroid/view/MenuItem;
    .end local v15           #sendSmsMenuItem:Landroid/view/MenuItem;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 183
    :cond_4
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 185
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 187
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 198
    :catch_0
    move-exception v10

    .line 200
    .local v10, ignore:Ljava/io/UnsupportedEncodingException;
    move-object v5, v7

    .restart local v5       #decodedPhoneExtra:Ljava/lang/String;
    goto/16 :goto_6

    .line 237
    .end local v5           #decodedPhoneExtra:Ljava/lang/String;
    .end local v10           #ignore:Ljava/io/UnsupportedEncodingException;
    :pswitch_2
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 238
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.VIEW"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mailto:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 241
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Lcom/android/mailcommon/WebViewContextMenu$Copy;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$Copy;-><init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 246
    :pswitch_3
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 247
    const-string v8, ""

    .line 249
    .local v8, geoExtra:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 254
    :goto_7
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 257
    .local v18, viewMapMenuItem:Landroid/view/MenuItem;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 258
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "geo:0,0?q="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 260
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Lcom/android/mailcommon/WebViewContextMenu$Copy;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$Copy;-><init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 269
    .end local v8           #geoExtra:Ljava/lang/String;
    .end local v18           #viewMapMenuItem:Landroid/view/MenuItem;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mailcommon/WebViewContextMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    sget-object v21, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getTitleViewLayoutResId(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 271
    .local v16, titleView:Landroid/widget/TextView;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 273
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/mailcommon/WebViewContextMenu;->showShareLinkMenuItem()Z

    move-result v21

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 280
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Lcom/android/mailcommon/WebViewContextMenu$Copy;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$Copy;-><init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/CharSequence;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 285
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 288
    .local v13, openLinkMenuItem:Landroid/view/MenuItem;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 289
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 291
    sget-object v20, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mailcommon/WebViewContextMenu;->getMenuResIdForMenuType(Lcom/android/mailcommon/WebViewContextMenu$MenuType;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    new-instance v21, Lcom/android/mailcommon/WebViewContextMenu$Share;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$Share;-><init>(Lcom/android/mailcommon/WebViewContextMenu;Ljava/lang/String;)V

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 251
    .end local v13           #openLinkMenuItem:Landroid/view/MenuItem;
    .end local v16           #titleView:Landroid/widget/TextView;
    .restart local v8       #geoExtra:Ljava/lang/String;
    :catch_1
    move-exception v20

    goto/16 :goto_7

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 192
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 301
    invoke-virtual {p0, p1}, Lcom/android/mailcommon/WebViewContextMenu;->onMenuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected abstract onMenuItemSelected(Landroid/view/MenuItem;)Z
.end method
