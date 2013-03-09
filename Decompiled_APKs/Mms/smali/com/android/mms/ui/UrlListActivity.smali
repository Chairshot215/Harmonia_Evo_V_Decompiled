.class public Lcom/android/mms/ui/UrlListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "UrlListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_URLS:Ljava/lang/String; = "com.android.mms.ExtraUrls"

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "UrlListActivity"

.field private static final REQUEST_ACTION_LIST:I


# instance fields
.field private mCallbackNum:Ljava/lang/String;

.field private mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p1:Ljava/util/regex/Pattern;

.field private p2:Ljava/util/regex/Pattern;

.field private p3:Ljava/util/regex/Pattern;

.field private p4:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->p1:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->p2:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->p3:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/UrlListActivity;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/UrlListActivity;->p4:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private checkCallbackNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "uriString"

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 366
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->extractPurePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, tel:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->extractPurePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, callback:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    const/4 v2, 0x1

    .line 374
    .end local v0           #callback:Ljava/lang/String;
    .end local v1           #tel:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 275
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/mms/ui/UrlListActivity;->finish()V

    goto :goto_0

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/android/mms/ui/UrlListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/UrlListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 268
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "icicle"

    .prologue
    .line 111
    invoke-super/range {p0 .. p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UrlListActivity;->requestWindowFeature(I)Z

    .line 115
    sget-object v19, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v20, 0x7f0900f1

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v4

    .line 117
    .local v4, controller:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UrlListActivity;->setContentView(Landroid/view/View;)V

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UrlListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 124
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UrlListActivity;->getWindow()Landroid/view/Window;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UrlListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 135
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UrlListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 136
    .local v7, intent:Landroid/content/Intent;
    const-string v19, "com.android.mms.ExtraUrls"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    .line 140
    const-string v19, "callback"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 141
    const-string v19, "callback"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    .line 142
    const-string v19, "UrlListActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "callback: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    sget-object v19, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->p1:Ljava/util/regex/Pattern;

    .line 148
    sget-object v19, Lcom/android/mms/ui/MyLinkify;->MMS_WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->p2:Ljava/util/regex/Pattern;

    .line 149
    sget-object v19, Lcom/android/mms/ui/MyLinkify;->PHONE_PATTERN_NO_SPACE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->p3:Ljava/util/regex/Pattern;

    .line 150
    sget-object v19, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/UrlListActivity;->p4:Ljava/util/regex/Pattern;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 155
    .local v17, size:I
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xa8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 156
    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "tel:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_2
    const/4 v5, 0x1

    .line 161
    .local v5, firstPhone:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 163
    .local v18, uriString:Ljava/lang/String;
    const-string v19, "UrlListActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "urls: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->p1:Ljava/util/regex/Pattern;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 165
    .local v12, mEmail:Ljava/util/regex/Matcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->p2:Ljava/util/regex/Pattern;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 166
    .local v11, mBrowser:Ljava/util/regex/Matcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->p3:Ljava/util/regex/Pattern;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    .line 167
    .local v14, mPhone:Ljava/util/regex/Matcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->p4:Ljava/util/regex/Pattern;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 169
    .local v13, mLocation:Ljava/util/regex/Matcher;
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    .line 172
    .local v8, isLoc:Z
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    .line 173
    .local v10, isUrl:Z
    if-eqz v10, :cond_3

    .line 174
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 175
    .local v16, scheme:Ljava/lang/String;
    const-string v19, "UrlListActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scheme: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez v16, :cond_3

    .line 177
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "http://"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, newUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v15           #newUrl:Ljava/lang/String;
    .end local v16           #scheme:Ljava/lang/String;
    :cond_3
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    .line 185
    .local v9, isPhone:Z
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xa8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 187
    if-eqz v9, :cond_4

    if-eqz v5, :cond_4

    .line 188
    const/4 v5, 0x0

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/UrlListActivity;->checkCallbackNumber(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "tel:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mCallbackNum:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4
    if-nez v8, :cond_5

    if-nez v10, :cond_5

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v19

    if-nez v19, :cond_5

    if-nez v9, :cond_5

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    const-string v19, "UrlListActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_5
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 206
    :cond_6
    if-nez v8, :cond_7

    if-eqz v9, :cond_8

    const-string v19, "tel:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 207
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    const-string v19, "UrlListActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "remove: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_8
    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 214
    if-eqz v8, :cond_9

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 161
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 249
    .end local v8           #isLoc:Z
    .end local v9           #isPhone:Z
    .end local v10           #isUrl:Z
    .end local v11           #mBrowser:Ljava/util/regex/Matcher;
    .end local v12           #mEmail:Ljava/util/regex/Matcher;
    .end local v13           #mLocation:Ljava/util/regex/Matcher;
    .end local v14           #mPhone:Ljava/util/regex/Matcher;
    .end local v18           #uriString:Ljava/lang/String;
    :cond_a
    new-instance v19, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UrlListActivity$EfficientAdapter;-><init>(Lcom/android/mms/ui/UrlListActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UrlListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 15
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 287
    const/4 v10, 0x0

    .line 289
    .local v10, uri:Landroid/net/Uri;
    iget-object v13, p0, Lcom/android/mms/ui/UrlListActivity;->p1:Ljava/util/regex/Pattern;

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 290
    .local v7, mEmail:Ljava/util/regex/Matcher;
    iget-object v13, p0, Lcom/android/mms/ui/UrlListActivity;->p2:Ljava/util/regex/Pattern;

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 291
    .local v6, mBrowser:Ljava/util/regex/Matcher;
    iget-object v13, p0, Lcom/android/mms/ui/UrlListActivity;->p3:Ljava/util/regex/Pattern;

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 292
    .local v9, mPhone:Ljava/util/regex/Matcher;
    iget-object v13, p0, Lcom/android/mms/ui/UrlListActivity;->p4:Ljava/util/regex/Pattern;

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 294
    .local v8, mLocation:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 301
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/ActionListActivity;

    invoke-direct {v5, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "id"

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v12, "isPhoneNum"

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const/4 v12, 0x0

    invoke-virtual {p0, v5, v12}, Lcom/android/mms/ui/UrlListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    :goto_0
    return-void

    .line 308
    .end local v5           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 309
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x7b

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 310
    .local v2, index1:I
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 311
    .local v3, index2:I
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x7d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 312
    .local v4, index3:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&geocode=&q="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v12, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v12, v14, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 315
    .local v11, url:Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 317
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v5, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 319
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/UrlListActivity;->startActivity(Landroid/content/Intent;)V

    .line 360
    .end local v2           #index1:I
    .end local v3           #index2:I
    .end local v4           #index3:I
    .end local v11           #url:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/UrlListActivity;->finish()V

    goto/16 :goto_0

    .line 320
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 322
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 323
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v5, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 324
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/UrlListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 330
    .end local v5           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 337
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "tel:"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 339
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/ActionListActivity;

    invoke-direct {v5, p0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v13, "id"

    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v14, v0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v5, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v12, "isPhoneNum"

    const/4 v13, 0x1

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 343
    const/4 v12, 0x0

    invoke-virtual {p0, v5, v12}, Lcom/android/mms/ui/UrlListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 348
    .end local v5           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 349
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v5, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 350
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/UrlListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 355
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v12, p0, Lcom/android/mms/ui/UrlListActivity;->mUrls:Ljava/util/ArrayList;

    move-wide/from16 v0, p4

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 356
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v5, v12, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 357
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/UrlListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
