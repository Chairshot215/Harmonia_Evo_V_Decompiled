.class final Lcom/android/htccontacts/util/ContactsUtils$3;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/util/ContactsUtils;->updateContactCardLink(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/android/htccontacts/util/ContactsUtils$3;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/htccontacts/util/ContactsUtils$3;->val$contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/android/htccontacts/util/ContactsUtils$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/htccontacts/util/ContactsUtils$3;->val$contactInfo:Lcom/android/htccontacts/HtcContactInfoBase;

    #calls: Lcom/android/htccontacts/util/ContactsUtils;->goToLinkScreen(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V
    invoke-static {v0, v1}, Lcom/android/htccontacts/util/ContactsUtils;->access$000(Landroid/app/Activity;Lcom/android/htccontacts/HtcContactInfoBase;)V

    .line 1658
    return-void
.end method
