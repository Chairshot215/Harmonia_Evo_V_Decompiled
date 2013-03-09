.class public Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;
.super Landroid/app/Fragment;
.source "HtcEncryptionConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

.field private mContentView:Landroid/view/View;

.field private mDescription:Landroid/widget/TextView;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 32
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 37
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$1;-><init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0c06eb

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->values()[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    move-result-object v1

    const-string v2, "action_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    .line 114
    invoke-static {}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->values()[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    move-result-object v1

    const-string v2, "storage_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 122
    :cond_0
    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm$2;->$SwitchMap$com$android$settings$framework$activity$storage$threelm$HtcEncryptionSettings$StorageType:[I

    iget-object v2, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mStorageType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mContentView:Landroid/view/View;

    return-object v1

    .line 129
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_2

    .line 130
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06ee

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mActionType:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    sget-object v2, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;->ENCRYPT:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$ActionType;

    if-ne v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionConfirm;->mDescription:Landroid/widget/TextView;

    const v2, 0x7f0c06fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
