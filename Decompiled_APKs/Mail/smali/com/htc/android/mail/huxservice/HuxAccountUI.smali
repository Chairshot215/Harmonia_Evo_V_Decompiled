.class public Lcom/htc/android/mail/huxservice/HuxAccountUI;
.super Ljava/lang/Object;
.source "HuxAccountUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;,
        Lcom/htc/android/mail/huxservice/HuxAccountUI$SelectDefaultAccountListItem;,
        Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListSignInItem;
    }
.end annotation


# static fields
.field public static final DIAGLOG_AIRPLANE_NOTIFY:I = 0x6e

.field public static final DIALOG_ADD_NEW_ACCOUNT:I = 0x68

.field public static final DIALOG_EXCHANGE_RESTORE_CONFIRM:I = 0x6a

.field public static final DIALOG_INVALID_PASSWORD:I = 0x66

.field public static final DIALOG_NO_NETWORK_ACCESS:I = 0x69

.field public static final DIALOG_RESTORE_ACCOUNTS:I = 0x67

.field public static final DIALOG_SAME_ACCOUNT_WARNING:I = 0x6c

.field public static final DIALOG_SERVICE_UNAVAILABLE:I = 0x65

.field public static final DIALOG_STORE_INFO_ON_DEVICE:I = 0x6d

.field public static final DIALOG_TURN_ON_NETWORK:I = 0x6b

.field public static final PROGRESS_DIALOG:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HuxAccountUI"


# instance fields
.field mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

.field public mDefaultAccountPosition:I

.field private onFocusAppendDomainLisener:Landroid/view/View$OnFocusChangeListener;

.field screen4TextWatcher:Landroid/text/TextWatcher;

.field uiAccountName:Landroid/widget/EditText;

.field private uiBtnLOnClickListener:Landroid/view/View$OnClickListener;

.field private uiBtnROnClickListener:Landroid/view/View$OnClickListener;

.field uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

.field uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

.field uiCurrentScreen:I

.field uiDefaultChkbox:Landroid/widget/CheckBox;

.field uiDialogPassword:Landroid/widget/EditText;

.field uiDialogPwdLayout:Landroid/widget/LinearLayout;

.field uiDialogShowPassword:Landroid/widget/CheckBox;

.field private uiDialogShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field uiEditAccountName:Landroid/widget/EditText;

.field uiEditEmailAddr:Landroid/widget/TextView;

.field uiEditPassword:Landroid/widget/EditText;

.field uiEditYourName:Landroid/widget/EditText;

.field uiEmailAddr:Landroid/widget/AutoCompleteTextView;

.field uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

.field uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

.field uiHuxSetAccountContext:Landroid/content/Context;

.field uiPassword:Landroid/widget/EditText;

.field uiRestoreAcctDialogLayout:Landroid/view/View;

.field uiScreen1ListView:Lcom/htc/widget/HtcListView;

.field uiScreen2:Landroid/widget/LinearLayout;

.field uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

.field uiScreen3:Landroid/widget/LinearLayout;

.field uiScreen4:Landroid/widget/LinearLayout;

.field private uiSelectDefaultAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private uiSelectSignInAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field uiShowPassword:Landroid/widget/CheckBox;

.field private uiShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field uiUpdatePwd:Landroid/widget/CheckBox;

.field uiYourName:Landroid/widget/EditText;

.field private updatePasswordListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method protected constructor <init>(Lcom/htc/android/mail/huxservice/HuxSetAccountBase;I)V
    .locals 7
    .parameter "huxEditAccount"
    .parameter "currentScreen"

    .prologue
    const/16 v6, 0x91

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v5, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    .line 76
    iput-object v5, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 95
    iput v4, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    .line 277
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$1;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->screen4TextWatcher:Landroid/text/TextWatcher;

    .line 300
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$2;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->onFocusAppendDomainLisener:Landroid/view/View$OnFocusChangeListener;

    .line 331
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$3;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->updatePasswordListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 344
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$4;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$4;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiBtnLOnClickListener:Landroid/view/View$OnClickListener;

    .line 350
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$5;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$5;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiBtnROnClickListener:Landroid/view/View$OnClickListener;

    .line 356
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$6;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 370
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$7;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$7;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 385
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$8;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$8;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiSelectSignInAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 391
    new-instance v1, Lcom/htc/android/mail/huxservice/HuxAccountUI$9;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI$9;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;)V

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiSelectDefaultAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 506
    iput v3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mDefaultAccountPosition:I

    .line 98
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    .line 99
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->requestWindowFeature(I)Z

    .line 100
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f03001a

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->setContentView(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x20806a9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 103
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    .line 105
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    .line 107
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f090084

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    .line 108
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    const v2, 0x10021

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 109
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->onFocusAppendDomainLisener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 111
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f090085

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiPassword:Landroid/widget/EditText;

    .line 112
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f090087

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPassword:Landroid/widget/CheckBox;

    .line 113
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPassword:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setInputType(I)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c7

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiAccountName:Landroid/widget/EditText;

    .line 119
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c9

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiYourName:Landroid/widget/EditText;

    .line 121
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    .line 122
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar1Btn;->getButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiBtnROnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    .line 125
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiBtnLOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiBtnROnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2:Landroid/widget/LinearLayout;

    .line 129
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f09009e

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen3:Landroid/widget/LinearLayout;

    .line 130
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f09007b

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen4:Landroid/widget/LinearLayout;

    .line 132
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c3

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    .line 133
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    .line 134
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 135
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 137
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f090081

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    .line 139
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v1}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->checkIfDefaultAccountExist()Z

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 141
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900cb

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditEmailAddr:Landroid/widget/TextView;

    .line 150
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900d2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    .line 151
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900cd

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditAccountName:Landroid/widget/EditText;

    .line 152
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900cf

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditYourName:Landroid/widget/EditText;

    .line 153
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiUpdatePwd:Landroid/widget/CheckBox;

    .line 154
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiUpdatePwd:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->updatePasswordListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 158
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030040

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v2, 0x7f090165

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogPassword:Landroid/widget/EditText;

    .line 162
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiRestoreAcctDialogLayout:Landroid/view/View;

    const v2, 0x7f090166

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPassword:Landroid/widget/CheckBox;

    .line 163
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPassword:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPwdOnCheckListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDialogShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setInputType(I)V

    .line 168
    :cond_1
    if-eqz p2, :cond_2

    .line 169
    iput p2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->updateScreen()V

    .line 172
    return-void

    .line 144
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiDefaultChkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private setCmdBarVisible(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 261
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBar1Btn;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->setVisibility(I)V

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_0
    return-void
.end method

.method private setScreenVisible(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x7f0900c5

    const v4, 0x7f090077

    const v3, 0x7f090072

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 240
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v5}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v3}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, v4}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkLastScreen()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditAccountName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditYourName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->enableButton(Z)V

    goto :goto_0
.end method

.method protected setAccountListAdapter(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, userEndPointInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;Lcom/htc/widget/HtcListView;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    .line 405
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiSelectSignInAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 407
    return-void
.end method

.method protected setBtnEnable(Landroid/widget/Button;Z)V
    .locals 0
    .parameter "btn"
    .parameter "isEnable"

    .prologue
    .line 296
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 297
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 298
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 234
    iput p1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    .line 235
    invoke-virtual {p0}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->updateScreen()V

    .line 236
    return-void
.end method

.method protected setDefaultAccountListAdapter(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, userEndPointInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;>;"
    const/4 v5, 0x1

    .line 410
    new-instance v0, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;-><init>(Lcom/htc/android/mail/huxservice/HuxAccountUI;Landroid/content/Context;Lcom/htc/widget/HtcListView;Ljava/util/ArrayList;Z)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    .line 411
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->mAccountListAdapter:Lcom/htc/android/mail/huxservice/HuxAccountUI$AccountListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 412
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 413
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiSelectDefaultAccountlistener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 414
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;

    iget-object v0, v0, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->userName:Ljava/lang/String;

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mDefaultAccountEmailAddr:Ljava/lang/String;

    .line 415
    return-void
.end method

.method protected showDialog(ZI)V
    .locals 1
    .parameter "isShow"
    .parameter "dialogIndex"

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->showDialog(I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    invoke-virtual {v0, p2}, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->removeDialog(I)V

    goto :goto_0
.end method

.method protected updateScreen()V
    .locals 7

    .prologue
    const v6, 0x7f0b0281

    const/16 v4, 0x64

    const v3, 0x7f0b006b

    const/4 v5, 0x0

    .line 176
    invoke-virtual {p0, v5, v4}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->showDialog(ZI)V

    .line 177
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 178
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    const v2, 0x7f0b0280

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 180
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 182
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCmdBarVisible(Landroid/view/View;)V

    .line 185
    iget v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCurrentScreen:I

    sparse-switch v1, :sswitch_data_0

    .line 231
    :goto_0
    return-void

    .line 187
    :sswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->showDialog(ZI)V

    goto :goto_0

    .line 190
    :sswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    const v2, 0x7f0b032f

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 191
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 192
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    const v2, 0x7f0b033a

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(I)V

    .line 193
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen1ListView:Lcom/htc/widget/HtcListView;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setScreenVisible(Landroid/view/View;)V

    goto :goto_0

    .line 196
    :sswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setScreenVisible(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 198
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 201
    :sswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCmdBarVisible(Landroid/view/View;)V

    .line 202
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar1Btn;->getButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 203
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    const v2, 0x7f0b033b

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(I)V

    .line 204
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen2_1ListView:Lcom/htc/widget/HtcListView;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setScreenVisible(Landroid/view/View;)V

    goto :goto_0

    .line 207
    :sswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCmdBarVisible(Landroid/view/View;)V

    .line 208
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd1:Lcom/htc/android/mail/widget/MailFooterBar1Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar1Btn;->getButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 209
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiAccountName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v3, v3, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiYourName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen3:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setScreenVisible(Landroid/view/View;)V

    .line 212
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiAccountName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 213
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEmailAddr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto/16 :goto_0

    .line 216
    :sswitch_5
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHeaderBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mProviderTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1;->setTitle(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-virtual {v1}, Lcom/htc/android/mail/widget/MailFooterBar2Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(I)V

    .line 219
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditEmailAddr:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mEmailAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditEmailAddr:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditAccountName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    iget-object v3, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccountContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditYourName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiHuxSetAccount:Lcom/htc/android/mail/huxservice/HuxSetAccountBase;

    iget-object v2, v2, Lcom/htc/android/mail/huxservice/HuxSetAccountBase;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v2}, Lcom/htc/android/mail/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditAccountName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->screen4TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 225
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiEditYourName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->screen4TextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiCmd2:Lcom/htc/android/mail/widget/MailFooterBar2Btn;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setCmdBarVisible(Landroid/view/View;)V

    .line 228
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HuxAccountUI;->uiScreen4:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/huxservice/HuxAccountUI;->setScreenVisible(Landroid/view/View;)V

    goto/16 :goto_0

    .line 185
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x1e -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method
