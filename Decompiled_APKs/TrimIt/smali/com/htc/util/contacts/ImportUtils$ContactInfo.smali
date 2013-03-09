.class public Lcom/htc/util/contacts/ImportUtils$ContactInfo;
.super Ljava/lang/Object;
.source "ImportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/ImportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field public mAccount:Landroid/accounts/Account;

.field public mDisplayName:Ljava/lang/String;

.field public mEmail:Ljava/lang/String;

.field public mEmails:Ljava/lang/String;

.field public mFirstName:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field public mNote:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mPhoneNumber1:Ljava/lang/String;

.field public mPhoneNumber2:Ljava/lang/String;

.field public mPhoneType:I

.field public mWebSite:Ljava/lang/String;

.field public mWebSiteType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
