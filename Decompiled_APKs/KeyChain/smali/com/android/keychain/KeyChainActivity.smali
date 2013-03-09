.class public Lcom/android/keychain/KeyChainActivity;
.super Landroid/app/Activity;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keychain/KeyChainActivity$5;,
        Lcom/android/keychain/KeyChainActivity$ResponseSender;,
        Lcom/android/keychain/KeyChainActivity$ViewHolder;,
        Lcom/android/keychain/KeyChainActivity$CertificateAdapter;,
        Lcom/android/keychain/KeyChainActivity$AliasLoader;,
        Lcom/android/keychain/KeyChainActivity$State;
    }
.end annotation


# static fields
.field private static KEY_STATE:Ljava/lang/String; = null

.field private static final REQUEST_UNLOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeyChain"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mSender:Landroid/app/PendingIntent;

.field private mSenderUid:I

.field private mState:Lcom/android/keychain/KeyChainActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "state"

    sput-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    .line 387
    return-void
.end method

.method static synthetic access$100(Lcom/android/keychain/KeyChainActivity;)Landroid/security/KeyStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keychain/KeyChainActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/keychain/KeyChainActivity;->mSenderUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainActivity;->displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keychain/KeyChainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    return-void
.end method

.method private displayCertChooserDialog(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V
    .locals 33
    .parameter "adapter"

    .prologue
    .line 156
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v29, 0x7f020002

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 159
    .local v10, contextView:Landroid/widget/TextView;
    const v29, 0x7f020001

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 161
    .local v14, footer:Landroid/view/View;
    const/high16 v29, 0x7f02

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    .line 162
    .local v22, lv:Landroid/widget/ListView;
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v10, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 163
    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v14, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 164
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 165
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 167
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v13

    .line 168
    .local v13, empty:Z
    if-eqz v13, :cond_2

    const/high16 v23, 0x104

    .line 169
    .local v23, negativeLabel:I
    :goto_0
    new-instance v29, Lcom/android/keychain/KeyChainActivity$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainActivity$1;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    move/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/keychain/KeyChainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 177
    .local v27, res:Landroid/content/res/Resources;
    if-eqz v13, :cond_3

    .line 178
    const v29, 0x7f030001

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 207
    .local v28, title:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    .line 214
    .local v11, dialog:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/IntentSender;->getTargetPackage()Ljava/lang/String;

    move-result-object v24

    .line 215
    .local v24, pkg:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keychain/KeyChainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 218
    .local v25, pm:Landroid/content/pm/PackageManager;
    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 222
    .local v7, applicationLabel:Ljava/lang/CharSequence;
    :goto_2
    const v29, 0x7f030003

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v7, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, appMessage:Ljava/lang/String;
    move-object v9, v6

    .line 226
    .local v9, contextMessage:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keychain/KeyChainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "host"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 227
    .local v15, host:Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 228
    move-object/from16 v17, v15

    .line 229
    .local v17, hostString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keychain/KeyChainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "port"

    const/16 v31, -0x1

    invoke-virtual/range {v29 .. v31}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 230
    .local v26, port:I
    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    .line 231
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 233
    :cond_0
    const v29, 0x7f030004

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v17, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, hostMessage:Ljava/lang/String;
    if-nez v9, :cond_6

    .line 236
    move-object/from16 v9, v16

    .line 241
    .end local v16           #hostMessage:Ljava/lang/String;
    .end local v17           #hostString:Ljava/lang/String;
    .end local v26           #port:I
    :cond_1
    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v29, 0x7f030005

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const-string v32, ".pfx"

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string v32, ".p12"

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 245
    .local v19, installMessage:Ljava/lang/String;
    const/high16 v29, 0x7f05

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 246
    .local v20, installText:Landroid/widget/TextView;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v29, 0x7f050001

    move/from16 v0, v29

    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 249
    .local v18, installButton:Landroid/widget/Button;
    new-instance v29, Lcom/android/keychain/KeyChainActivity$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/keychain/KeyChainActivity$3;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v29, Lcom/android/keychain/KeyChainActivity$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/keychain/KeyChainActivity$4;-><init>(Lcom/android/keychain/KeyChainActivity;)V

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 263
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 264
    return-void

    .line 168
    .end local v6           #appMessage:Ljava/lang/String;
    .end local v7           #applicationLabel:Ljava/lang/CharSequence;
    .end local v9           #contextMessage:Ljava/lang/String;
    .end local v11           #dialog:Landroid/app/Dialog;
    .end local v15           #host:Ljava/lang/String;
    .end local v18           #installButton:Landroid/widget/Button;
    .end local v19           #installMessage:Ljava/lang/String;
    .end local v20           #installText:Landroid/widget/TextView;
    .end local v23           #negativeLabel:I
    .end local v24           #pkg:Ljava/lang/String;
    .end local v25           #pm:Landroid/content/pm/PackageManager;
    .end local v27           #res:Landroid/content/res/Resources;
    .end local v28           #title:Ljava/lang/String;
    :cond_2
    const v23, 0x7f030008

    goto/16 :goto_0

    .line 180
    .restart local v23       #negativeLabel:I
    .restart local v27       #res:Landroid/content/res/Resources;
    :cond_3
    const v29, 0x7f030002

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 181
    .restart local v28       #title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keychain/KeyChainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v29

    const-string v30, "alias"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, alias:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 184
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 185
    .local v4, adapterPosition:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v4, v0, :cond_4

    .line 186
    add-int/lit8 v21, v4, 0x1

    .line 187
    .local v21, listViewPosition:I
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 196
    .end local v4           #adapterPosition:I
    .end local v21           #listViewPosition:I
    :cond_4
    :goto_4
    const v29, 0x7f030007

    new-instance v30, Lcom/android/keychain/KeyChainActivity$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keychain/KeyChainActivity$2;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/widget/ListView;Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)V

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 189
    :cond_5
    #getter for: Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->mAliases:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Lcom/android/keychain/KeyChainActivity$CertificateAdapter;->access$400(Lcom/android/keychain/KeyChainActivity$CertificateAdapter;)Ljava/util/List;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 191
    const/4 v4, 0x0

    .line 192
    .restart local v4       #adapterPosition:I
    add-int/lit8 v21, v4, 0x1

    .line 193
    .restart local v21       #listViewPosition:I
    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_4

    .line 219
    .end local v4           #adapterPosition:I
    .end local v5           #alias:Ljava/lang/String;
    .end local v21           #listViewPosition:I
    .restart local v11       #dialog:Landroid/app/Dialog;
    .restart local v24       #pkg:Ljava/lang/String;
    .restart local v25       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v12

    .line 220
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v7, v24

    .restart local v7       #applicationLabel:Ljava/lang/CharSequence;
    goto/16 :goto_2

    .line 238
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #appMessage:Ljava/lang/String;
    .restart local v9       #contextMessage:Ljava/lang/String;
    .restart local v15       #host:Ljava/lang/String;
    .restart local v16       #hostMessage:Ljava/lang/String;
    .restart local v17       #hostString:Ljava/lang/String;
    .restart local v26       #port:I
    :cond_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3
.end method

.method private finish(Ljava/lang/String;)V
    .locals 5
    .parameter "alias"

    .prologue
    const/4 v4, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    invoke-virtual {p0, v4}, Lcom/android/keychain/KeyChainActivity;->setResult(I)V

    .line 377
    :goto_0
    invoke-virtual {p0}, Lcom/android/keychain/KeyChainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/IKeyChainAliasCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainAliasCallback;

    move-result-object v0

    .line 380
    .local v0, keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    if-eqz v0, :cond_1

    .line 381
    new-instance v2, Lcom/android/keychain/KeyChainActivity$ResponseSender;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, p1, v3}, Lcom/android/keychain/KeyChainActivity$ResponseSender;-><init>(Lcom/android/keychain/KeyChainActivity;Landroid/security/IKeyChainAliasCallback;Ljava/lang/String;Lcom/android/keychain/KeyChainActivity$1;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/keychain/KeyChainActivity$ResponseSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 385
    :goto_1
    return-void

    .line 373
    .end local v0           #keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v1, result:Landroid/content/Intent;
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/keychain/KeyChainActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 384
    .end local v1           #result:Landroid/content/Intent;
    .restart local v0       #keyChainAliasResponse:Landroid/security/IKeyChainAliasCallback;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keychain/KeyChainActivity;->finish()V

    goto :goto_1
.end method

.method private isKeyStoreUnlocked()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCertChooserDialog()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/android/keychain/KeyChainActivity$AliasLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;-><init>(Lcom/android/keychain/KeyChainActivity;Lcom/android/keychain/KeyChainActivity$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/keychain/KeyChainActivity$AliasLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 357
    :pswitch_0
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->isKeyStoreUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->showCertChooserDialog()V

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-nez p1, :cond_1

    .line 85
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 88
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/android/keychain/KeyChainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sender"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    .line 98
    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 100
    invoke-direct {p0, v4}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    .line 131
    :goto_0
    :pswitch_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keychain/KeyChainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity;->mSender:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/IntentSender;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/keychain/KeyChainActivity;->mSenderUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    sget-object v1, Lcom/android/keychain/KeyChainActivity$5;->$SwitchMap$com$android$keychain$KeyChainActivity$State:[I

    iget-object v2, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    invoke-virtual {v2}, Lcom/android/keychain/KeyChainActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 106
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-direct {p0, v4}, Lcom/android/keychain/KeyChainActivity;->finish(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->isKeyStoreUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->UNLOCK_REQUESTED:Lcom/android/keychain/KeyChainActivity$State;

    iput-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.credentials.UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/keychain/KeyChainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/keychain/KeyChainActivity;->showCertChooserDialog()V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 427
    iget-object v0, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    if-eq v0, v1, :cond_0

    .line 428
    sget-object v0, Lcom/android/keychain/KeyChainActivity;->KEY_STATE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keychain/KeyChainActivity;->mState:Lcom/android/keychain/KeyChainActivity$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 430
    :cond_0
    return-void
.end method
