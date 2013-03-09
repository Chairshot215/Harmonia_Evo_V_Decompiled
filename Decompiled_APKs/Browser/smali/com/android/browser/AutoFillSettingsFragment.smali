.class public Lcom/android/browser/AutoFillSettingsFragment;
.super Landroid/app/Fragment;
.source "AutoFillSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;,
        Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AutoFillSettingsFragment"

.field private static final PROFILE_DELETED_MSG:I = 0x65

.field private static final PROFILE_SAVED_MSG:I = 0x64


# instance fields
.field private mAddressLine1Edit:Landroid/widget/EditText;

.field private mAddressLine2Edit:Landroid/widget/EditText;

.field private mCityEdit:Landroid/widget/EditText;

.field private mCompanyEdit:Landroid/widget/EditText;

.field private mCountryEdit:Landroid/widget/EditText;

.field private mEmailEdit:Landroid/widget/EditText;

.field private mFieldChangedListener:Landroid/text/TextWatcher;

.field private mFullNameEdit:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneEdit:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mStateEdit:Landroid/widget/EditText;

.field private mUniqueId:I

.field private mZipEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    .line 113
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/AutoFillSettingsFragment$FieldChangedListener;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    .line 116
    new-instance v0, Lcom/android/browser/AutoFillSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/browser/AutoFillSettingsFragment$1;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/AutoFillSettingsFragment;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/AutoFillSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/browser/AutoFillSettingsFragment;->closeEditor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/AutoFillSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mUniqueId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/browser/AutoFillSettingsFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    return-object v0
.end method

.method private closeEditor()V
    .locals 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 269
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/AutoFillSettingsFragment;->setHasOptionsMenu(Z)V

    .line 144
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 145
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 149
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 150
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 180
    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    .line 183
    const v2, 0x7f0d0012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 184
    const v2, 0x7f0d000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    .line 185
    const v2, 0x7f0d000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    .line 187
    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    .line 189
    const v2, 0x7f0d000d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    .line 190
    const v2, 0x7f0d000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    .line 191
    const v2, 0x7f0d000f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    .line 192
    const v2, 0x7f0d0010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    .line 193
    const v2, 0x7f0d0011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    .line 195
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 197
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 199
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 203
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFieldChangedListener:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 204
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/browser/AutoFillSettingsFragment$PhoneNumberValidator;-><init>(Lcom/android/browser/AutoFillSettingsFragment;Lcom/android/browser/AutoFillSettingsFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 206
    const v2, 0x7f0d0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    .line 207
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/browser/AutoFillSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/android/browser/AutoFillSettingsFragment$2;-><init>(Lcom/android/browser/AutoFillSettingsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    .line 229
    .local v0, activeProfile:Landroid/webkit/WebSettings$AutoFillProfile;
    if-eqz v0, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/webkit/WebSettings$AutoFillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 244
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d0096

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSettings:Lcom/android/browser/BrowserSettings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/browser/AutoFillSettingsFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->setAutoFillProfile(Landroid/webkit/WebSettings$AutoFillProfile;Landroid/os/Message;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/browser/AutoFillSettingsFragment;->updateButtonState()V

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateButtonState()V
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mFullNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCompanyEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine1Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mAddressLine2Edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCityEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mStateEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mZipEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mCountryEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mPhoneEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 262
    .local v0, valid:Z
    :goto_0
    iget-object v1, p0, Lcom/android/browser/AutoFillSettingsFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 263
    return-void

    .line 249
    .end local v0           #valid:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
