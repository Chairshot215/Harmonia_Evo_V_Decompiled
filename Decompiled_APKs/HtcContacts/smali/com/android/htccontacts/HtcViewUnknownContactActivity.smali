.class public Lcom/android/htccontacts/HtcViewUnknownContactActivity;
.super Lcom/android/htccontacts/HtcViewContactDetail;
.source "HtcViewUnknownContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;
    }
.end annotation


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x1

.field private static final CONTEXT_MENU_VT_CALL:I = 0x0

.field private static final MENU_SAVE_TO_CONTACTS:I = 0x3

.field protected static final SAVE_UNKNOWN_CONTACT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HtcViewUnknownContactActivity"


# instance fields
.field private mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

.field private mHandler:Landroid/os/Handler;

.field public mIsDirty:Z

.field private mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

.field private mSaveToCotnactDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/htccontacts/HtcViewContactDetail;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mIsDirty:Z

    .line 70
    new-instance v0, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity$1;-><init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mHandler:Landroid/os/Handler;

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Lcom/android/htccontacts/HtcContactInfoUnknown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/HtcViewUnknownContactActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    return-object p1
.end method


# virtual methods
.method addToContact(Ljava/lang/String;)V
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x1

    .line 292
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03003c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, handlerView:Landroid/view/View;
    new-instance v2, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;

    invoke-direct {v2, p0, p1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity$DialogClickListener;-><init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;Ljava/lang/String;)V

    .line 296
    .local v2, listener:Landroid/view/View$OnClickListener;
    const v6, 0x7f07007c

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    .local v3, numbertext:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v6, 0x7f07007d

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 300
    .local v5, savenewbutton:Landroid/widget/Button;
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    const v6, 0x7f07007e

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 302
    .local v4, saveexistbutton:Landroid/widget/Button;
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v6, 0x7f0a00e1

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 306
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 307
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 308
    invoke-virtual {v0, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 309
    new-instance v6, Lcom/android/htccontacts/HtcViewUnknownContactActivity$2;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity$2;-><init>(Lcom/android/htccontacts/HtcViewUnknownContactActivity;)V

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 315
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitleDividerVisible(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 317
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    .line 318
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mSaveToCotnactDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 320
    return-void
.end method

.method protected buildEntries()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, number:Ljava/lang/String;
    const/4 v8, 0x1

    .line 182
    .local v8, enabled:Z
    if-eqz v10, :cond_0

    const-string v0, "-1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    const-string v10, ""

    .line 186
    const/4 v8, 0x0

    .line 188
    :cond_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v8, :cond_2

    .line 190
    new-instance v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v11}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 191
    .local v11, viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v0, 0x20801cc

    iput v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 192
    const v0, 0x7f0a0171

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 193
    iput-object v10, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 194
    const/4 v0, 0x5

    iput v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 195
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    invoke-static {v1, v10, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 196
    .local v9, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    iput-object v9, v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .end local v11           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    invoke-direct {v11}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 202
    .restart local v11       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    const v0, 0x20801cf

    iput v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->leftIconId:I

    .line 203
    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 204
    iput-object v10, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text2:Ljava/lang/String;

    .line 205
    const/4 v0, 0x4

    iput v0, v11, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    .line 206
    new-instance v9, Landroid/content/Intent;

    .end local v9           #intent:Landroid/content/Intent;
    const-string v0, "android.intent.action.SENDTO"

    const-string v1, "sms"

    invoke-static {v1, v10, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    .restart local v9       #intent:Landroid/content/Intent;
    iput-object v9, v11, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->isUnknownMailType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v0}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultMailAddress()Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, sMail:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v1, 0x7f0a0174

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, -0x1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->newEmailEntry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Z)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    move-result-object v11

    .line 216
    .restart local v11       #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .end local v2           #sMail:Ljava/lang/String;
    .end local v11           #viewEntry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :cond_3
    return-void
.end method

.method protected callDefaultNumber()Z
    .locals 5

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v3}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 489
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 492
    const/4 v1, 0x1

    return v1
.end method

.method protected dataChanged()V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->buildEntries()V

    .line 224
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    .line 226
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mAdapter:Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->setSections(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 163
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 167
    if-eqz p3, :cond_1

    .line 168
    const-string v0, "DefaultTab"

    const-string v1, "PEOPLE_DETAIL_VIEW_DETAIL"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, p3}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->finish()V

    .line 175
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/HtcViewContactDetail;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 449
    const/4 v2, 0x0

    .line 450
    .local v2, handled:Z
    sget-boolean v6, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v6, :cond_0

    .line 453
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .local v5, menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v6, v5, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v7

    sub-int v4, v6, v7

    .line 461
    .local v4, itemPos:I
    if-ltz v4, :cond_0

    .line 462
    iget-object v6, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-static {v6, v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 463
    .local v1, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v1, :cond_0

    .line 464
    iget v6, v1, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 465
    iget-object v6, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_0

    .line 467
    iget-object v6, v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 468
    .local v3, intent:Landroid/content/Intent;
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/android/htccontacts/util/PhoneUtils;->attachExtra(Landroid/content/Intent;ZLcom/android/htccontacts/HtcContactInfo;)V

    .line 469
    invoke-virtual {p0, v3}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 470
    const/4 v2, 0x1

    .end local v1           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #itemPos:I
    .end local v5           #menuInfo:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    :cond_0
    move v6, v2

    .line 477
    :goto_0
    return v6

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v6, "HtcViewUnknownContactActivity"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const-string v0, "onCreate()..."

    invoke-static {v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->dLog(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->mInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    check-cast v0, Lcom/android/htccontacts/HtcContactInfoUnknown;

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->setDefaultTitleVisibility(I)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/HtcContactInfoUnknown;->registerForChangedNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 126
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/android/htccontacts/HtcContactInfoUnknown;

    const-string v1, ""

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 425
    sget-boolean v5, Lcom/htc/util/phone/ProjectUtils;->SUPPORT_VT:Z

    if-eqz v5, :cond_0

    .line 428
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    .local v3, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget v5, v3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v6

    sub-int v4, v5, v6

    .line 434
    .local v4, itemPos:I
    if-ltz v4, :cond_0

    .line 435
    iget-object v5, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 436
    .local v2, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v2, :cond_0

    .line 437
    iget v5, v2, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->kind:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 438
    const v5, 0x7f0a01b4

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 439
    const v5, 0x7f0a03ca

    invoke-interface {p1, v7, v7, v7, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 445
    .end local v2           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .end local v3           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v4           #itemPos:I
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "HtcViewUnknownContactActivity"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 387
    const/4 v0, 0x3

    const v1, 0x7f0a00e1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080331

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v1, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/HtcContactInfoUnknown;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 157
    iput-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    .line 158
    iput-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    .line 160
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 271
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 269
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 246
    const/4 v3, 0x5

    if-ne v3, p1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getSelectedItemPosition()I

    move-result v1

    .line 248
    .local v1, selected:I
    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->callDefaultNumber()Z

    .line 262
    .end local v1           #selected:I
    :goto_0
    return v2

    .line 255
    .restart local v1       #selected:I
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #selected:I
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/HtcViewContactDetail;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 234
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewContactDetail;->mSections:Ljava/util/ArrayList;

    invoke-static {v2, p3}, Lcom/android/htccontacts/HtcViewContactDetail$ViewAdapter;->getEntry(Ljava/util/ArrayList;I)Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    .line 235
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->intent:Landroid/content/Intent;

    .line 237
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 241
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 363
    .local v0, id:I
    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    .line 364
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->isUnknownMailType()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultMailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultMailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/contacts/ContactsUtility;->getAddMailToContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 366
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 367
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 378
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 380
    :goto_1
    return v2

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->addToContact(Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-super {p0, p1}, Lcom/android/htccontacts/HtcViewContactDetail;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 397
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 399
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->isUnknownMailType()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultMailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 402
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 418
    :cond_0
    :goto_0
    return v4

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 404
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    iget-object v2, v2, Lcom/android/htccontacts/HtcContactInfoBase;->mNumberList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;

    .line 408
    .local v0, contactinfo:Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;
    iget-object v2, v0, Lcom/android/htccontacts/HtcContactInfo$ContactInfoEntry;->mData:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getDefaultPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->isN11Number(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    invoke-virtual {v2}, Lcom/android/htccontacts/HtcContactInfoUnknown;->getNumberType()I

    move-result v2

    invoke-static {v2}, Lcom/htc/util/contacts/PhoneUtils;->isSpecialType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 411
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 404
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/htccontacts/HtcViewContactDetail;->onResume()V

    .line 131
    const-string v0, "onResume()..."

    invoke-static {v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->dLog(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    if-nez v0, :cond_1

    .line 133
    const-string v0, "no contact information"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->error(Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mIsDirty:Z

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mParent:Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->dataChanged()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mIsDirty:Z

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->mContactInfo:Lcom/android/htccontacts/HtcContactInfoUnknown;

    const v1, 0x7f0a00ef

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/HtcViewUnknownContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardTitle(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;Ljava/lang/String;)V

    goto :goto_0
.end method
