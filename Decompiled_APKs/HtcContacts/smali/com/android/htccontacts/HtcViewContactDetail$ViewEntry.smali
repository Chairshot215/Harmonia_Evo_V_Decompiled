.class public Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
.super Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;
.source "HtcViewContactDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewEntry"
.end annotation


# static fields
.field static final ENTRY_TYPE_COMMUNICATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable; = null

.field static final ENTRY_TYPE_EDIT:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable; = null

.field static final ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable; = null

.field static final ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable; = null

.field static final ENTRY_TYPE_MY_CONTACT_OPTION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable; = null

.field static final VIEW_TYPE_COMMUNICATION:I = 0x2

.field static final VIEW_TYPE_CUSTOM:I = 0x4

.field static final VIEW_TYPE_EDIT:I = 0x1

.field static final VIEW_TYPE_INFORMATION:I = 0x3

.field static final VIEW_TYPE_INFORMATION_NOTES:I = 0x6

.field static final VIEW_TYPE_LABEL:I = 0x0

.field static final VIEW_TYPE_MY_CONTACT_OPTION:I = 0x5


# instance fields
.field auxIntent:Landroid/content/Intent;

.field entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

.field iconIntent:Landroid/content/Intent;

.field intent:Landroid/content/Intent;

.field phoneIntent:Landroid/content/Intent;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    new-instance v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v1, "label"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 283
    new-instance v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v1, "edit"

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_EDIT:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 284
    new-instance v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v1, "communication"

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_COMMUNICATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 285
    new-instance v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v1, "information"

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 286
    new-instance v0, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v1, "my_contact_option"

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_MY_CONTACT_OPTION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-direct {p0}, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;-><init>()V

    .line 296
    sget-object v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_INFORMATION:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iput-object v0, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 301
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->auxIntent:Landroid/content/Intent;

    .line 302
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->iconIntent:Landroid/content/Intent;

    .line 303
    iput-object v1, p0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->phoneIntent:Landroid/content/Intent;

    return-void
.end method

.method static getLabelEntry(Ljava/lang/String;)Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    .locals 2
    .parameter "label"

    .prologue
    .line 306
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    new-instance v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;

    invoke-direct {v0}, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;-><init>()V

    .line 308
    .local v0, entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    sget-object v1, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->ENTRY_TYPE_LABEL:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iput-object v1, v0, Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;->entry_type:Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    .line 309
    iput-object p0, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->text1:Ljava/lang/String;

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/htccontacts/HtcContactDetailAdapter$Entry;->enabled:Z

    .line 313
    .end local v0           #entry:Lcom/android/htccontacts/HtcViewContactDetail$ViewEntry;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
