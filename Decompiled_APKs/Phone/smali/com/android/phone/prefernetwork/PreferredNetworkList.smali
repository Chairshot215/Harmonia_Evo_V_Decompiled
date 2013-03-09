.class public Lcom/android/phone/prefernetwork/PreferredNetworkList;
.super Lcom/htc/app/HtcListActivity;
.source "PreferredNetworkList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;,
        Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;
    }
.end annotation


# static fields
.field private static final ACT_OPERATOR_REARRANGE:I = 0x2

.field private static final ACT_OPERATOR_SELECT:I = 0x1

.field public static final INTENT_EXTRA_CODELIST:Ljava/lang/String; = "code_list"

.field public static final INTENT_EXTRA_NAMELIST:Ljava/lang/String; = "name_list"

.field private static final LOG_TAG:Ljava/lang/String; = "HtcNetworkPrefSwitcher"

.field private static final NETWORK_TYPE_2G:I = 0x0

.field private static final NETWORK_TYPE_3G:I = 0x1

.field private static final NETWORK_TYPE_3G_CODE_PREFIX:Ljava/lang/String; = "G"

.field private static final NETWORK_TYPE_BOTH:I = 0x2

.field private static final NETWORK_TYPE_BOTH_CODE_PREFIX:Ljava/lang/String; = "B"


# instance fields
.field private MNC_ADD_DLG_ID:I

.field private MNC_DLG_ID:I

.field private mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

.field private mAddListDialog:Landroid/app/Dialog;

.field private mCancelButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mDoneButton:Landroid/widget/Button;

.field private mEditer:Landroid/view/View;

.field private mMenu:Landroid/view/Menu;

.field private mOpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferOpCode:Ljava/lang/String;

.field private mPreferOpName:Ljava/lang/String;

.field private mTypeDialog:Landroid/app/Dialog;

.field private onAdd:Landroid/view/View$OnClickListener;

.field private onCancel:Landroid/view/View$OnClickListener;

.field private onDone:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 140
    new-instance v0, Lcom/android/phone/prefernetwork/PreferredNetworkList$1;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$1;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onAdd:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$2;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onDone:Landroid/view/View$OnClickListener;

    .line 166
    new-instance v0, Lcom/android/phone/prefernetwork/PreferredNetworkList$3;

    invoke-direct {v0, p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$3;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onCancel:Landroid/view/View$OnClickListener;

    .line 355
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I

    .line 356
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/prefernetwork/PreferredNetworkList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$484(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/prefernetwork/PreferredNetworkList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/prefernetwork/PreferredNetworkList;)Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method public addOpEntry(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "mnc"
    .parameter "name"
    .parameter "checkDup"

    .prologue
    .line 302
    if-eqz p3, :cond_1

    .line 304
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-virtual {v2}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->getMnc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v2, 0x0

    .line 314
    .end local v1           #i:I
    :goto_1
    return v2

    .line 304
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    .end local v1           #i:I
    :cond_1
    new-instance v0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .local v0, data:Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 261
    const-string v5, "HtcNetworkPrefSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult: requestCode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "), resultCode( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    if-ne p2, v8, :cond_0

    if-eqz p3, :cond_0

    .line 266
    const-string v5, "code_list"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, codeData:Ljava/lang/String;
    const-string v5, "name_list"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, nameData:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 269
    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpCode:Ljava/lang/String;

    .line 270
    iput-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mPreferOpName:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showTypeDialog()V

    goto :goto_0

    .line 277
    .end local v0           #codeData:Ljava/lang/String;
    .end local v2           #nameData:Ljava/lang/String;
    :pswitch_1
    if-ne p2, v8, :cond_0

    if-eqz p3, :cond_0

    .line 278
    const-string v5, "code_list"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, opCode:Ljava/lang/String;
    const-string v5, "name_list"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, opName:Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, codeData:[Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, nameData:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 284
    array-length v5, v0

    array-length v6, v2

    if-ne v5, v6, :cond_1

    .line 285
    aget-object v5, v0, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 286
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 287
    aget-object v5, v0, v1

    aget-object v6, v2, v1

    invoke-virtual {p0, v5, v6, v9}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->addOpEntry(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    .end local v1           #i:I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    invoke-virtual {v5}, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 476
    const/4 v3, -0x1

    if-ne v3, p2, :cond_1

    .line 477
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, data:Ljava/lang/String;
    const-string v1, ""

    .line 479
    .local v1, name:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    invoke-static {p0, v0}, Lcom/android/phone/prefernetwork/OperatorData;->getOperatorName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e01e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 483
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;

    check-cast v3, Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 493
    .end local v0           #data:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 487
    .restart local v0       #data:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .local v2, opData:Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    invoke-virtual {v3}, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v8, 0x7f030051

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->setContentView(I)V

    .line 84
    const v8, 0x7f080133

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarText;

    .line 86
    .local v2, headerText:Lcom/htc/widget/HeaderBarText;
    if-eqz v2, :cond_0

    .line 87
    const v8, 0x7f0e01da

    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 88
    invoke-virtual {v2, v10}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 90
    :cond_0
    const v8, 0x7f080134

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarImage;

    .line 92
    .local v1, headerBarAddImage:Lcom/htc/widget/HeaderBarImage;
    if-eqz v1, :cond_1

    .line 93
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 94
    const v8, 0x7f0e01db

    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 95
    const v8, 0x208087b

    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 96
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onAdd:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v8}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v1, v10}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 100
    :cond_1
    const v8, 0x7f080079

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDoneButton:Landroid/widget/Button;

    .line 101
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDoneButton:Landroid/widget/Button;

    if-eqz v8, :cond_2

    .line 102
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDoneButton:Landroid/widget/Button;

    const v9, 0x104000a

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 103
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDoneButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onDone:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mCancelButton:Landroid/widget/Button;

    .line 107
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mCancelButton:Landroid/widget/Button;

    if-eqz v8, :cond_3

    .line 108
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mCancelButton:Landroid/widget/Button;

    const/high16 v9, 0x104

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(I)V

    .line 109
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mCancelButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->onCancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    .line 114
    const-string v0, ""

    .line 115
    .local v0, code:Ljava/lang/String;
    const-string v5, ""

    .line 116
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 117
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_4

    .line 118
    const-string v8, "code_list"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v8, "name_list"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 123
    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, tmpName:[Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, tmpMnc:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_6

    .line 127
    aget-object v8, v6, v3

    aget-object v9, v7, v3

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->addOpEntry(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v3           #i:I
    .end local v6           #tmpMnc:[Ljava/lang/String;
    .end local v7           #tmpName:[Ljava/lang/String;
    :cond_5
    iget v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showDialog(I)V

    .line 135
    :cond_6
    new-instance v8, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    iget-object v9, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-direct {v8, p0, p0, v9}, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    .line 137
    iget-object v8, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mActionAdapter:Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;

    invoke-virtual {p0, v8}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 365
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 367
    .local v5, r:Landroid/content/res/Resources;
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I

    if-ne v6, p1, :cond_1

    .line 370
    const v6, 0x7f0e01e3

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 371
    iget-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDialog:Landroid/app/Dialog;

    if-nez v6, :cond_0

    .line 373
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v8, 0x7f030011

    invoke-virtual {v6, v8, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 374
    .local v2, holder:Landroid/view/View;
    const v6, 0x7f08008d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mEditer:Landroid/view/View;

    .line 376
    new-instance v4, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;

    invoke-direct {v4, p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$4;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V

    .line 399
    .local v4, oklistener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v0, 0x0

    .line 401
    .local v0, cancellistener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x104000a

    invoke-virtual {v1, v6, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 402
    const/high16 v6, 0x104

    invoke-virtual {v1, v6, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 404
    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 406
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDialog:Landroid/app/Dialog;

    .line 408
    .end local v0           #cancellistener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #holder:Landroid/view/View;
    .end local v4           #oklistener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDialog:Landroid/app/Dialog;

    .line 435
    :goto_0
    return-object v6

    .line 409
    :cond_1
    iget v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I

    if-ne v6, p1, :cond_3

    .line 410
    iget-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mAddListDialog:Landroid/app/Dialog;

    if-nez v6, :cond_2

    .line 411
    const v6, 0x7f0e01db

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 413
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    .line 415
    .local v3, itemsString:[Ljava/lang/String;
    const v6, 0x7f0e01de

    invoke-virtual {p0, v6}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    .line 416
    const/4 v6, 0x1

    const v7, 0x7f0e01df

    invoke-virtual {p0, v7}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 418
    new-instance v6, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;

    invoke-direct {v6, p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$5;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;)V

    invoke-virtual {v1, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 431
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mAddListDialog:Landroid/app/Dialog;

    .line 433
    .end local v3           #itemsString:[Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mAddListDialog:Landroid/app/Dialog;

    goto :goto_0

    :cond_3
    move-object v6, v7

    .line 435
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 203
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 204
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mMenu:Landroid/view/Menu;

    .line 207
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 175
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_DLG_ID:I

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->removeDialog(I)V

    .line 177
    iput-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mDialog:Landroid/app/Dialog;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 181
    iput-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mAddListDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 185
    iget v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I

    invoke-virtual {p0, v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->removeDialog(I)V

    .line 186
    iput-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mAddListDialog:Landroid/app/Dialog;

    .line 188
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 227
    :pswitch_0
    iget v4, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->MNC_ADD_DLG_ID:I

    invoke-virtual {p0, v4}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->showDialog(I)V

    move v4, v5

    .line 228
    goto :goto_0

    .line 232
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "rearrange_network_preference"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 235
    const-string v3, ""

    .local v3, result:Ljava/lang/String;
    const-string v0, ""

    .line 236
    .local v0, codeList:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-virtual {v4}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->getMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    invoke-virtual {v4}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_1
    const-string v4, "code_list"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v4, "name_list"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/4 v4, 0x2

    invoke-virtual {p0, v2, v4}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->startActivityForResult(Landroid/content/Intent;I)V

    .end local v0           #codeList:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #result:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 248
    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x7f080159
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 193
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 212
    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mMenu:Landroid/view/Menu;

    const v2, 0x7f08015a

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 213
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mOpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 219
    :goto_0
    return v3

    .line 216
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onResume()V

    .line 198
    return-void
.end method

.method protected showTypeDialog()V
    .locals 5

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/android/phone/prefernetwork/PreferredNetworkList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 441
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    .local v0, dlgBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0e01e3

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 444
    const v2, 0x7f07003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/prefernetwork/PreferredNetworkList$6;-><init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/content/res/Resources;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 467
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    if-nez v2, :cond_0

    .line 468
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList;->mTypeDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 472
    return-void
.end method
