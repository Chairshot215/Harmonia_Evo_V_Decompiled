.class public Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;
.super Ljava/lang/Object;
.source "HUXUTIL.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyDeviceInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public providers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

.field users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 373
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo$1;

    invoke-direct {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 308
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, i:I
    const-string v5, "availableEndpoints"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 316
    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 319
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "providerId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, key:Ljava/lang/String;
    const-string v5, ""

    invoke-interface {v4, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, provider:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v3, v5}, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 326
    .local v1, info:Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;
    iget-object v5, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v0, v0, 0x1

    .line 328
    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 360
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/huxservice/HUXUTIL$endpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 361
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/android/mail/huxservice/HUXUTIL$userEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 362
    const-class v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 363
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "root"

    .prologue
    .line 332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 334
    const-string v0, "sncVerifyDevice:availableEndpoint:sncEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_endpoints(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 335
    const-string v0, "sncVerifyDevice:sncUserEndpoints:sncUserEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_users(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 336
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    const-string v1, "sncVerifyDevice:sncTerms"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 339
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const-string v0, "sncEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_endpoints(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 342
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 2
    .parameter "root"
    .parameter "isProviderOnly"

    .prologue
    .line 344
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    .line 349
    if-eqz p2, :cond_0

    .line 350
    const-string v0, "sncEndpoints:sncEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_endpoints(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 356
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string v0, "sncVerifyDevice:availableEndpoint:sncEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_endpoints(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    .line 353
    const-string v0, "sncVerifyDevice:sncUserEndpoints:sncUserEndpoint"

    invoke-static {p1, v0}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/huxservice/HUXUTIL;->get_users(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    const-string v1, "sncVerifyDevice:sncTerms"

    invoke-static {p1, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyDeviceInfo\n providers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " terms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->providers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 369
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$VerifyDeviceInfo;->terms:Lcom/htc/android/mail/huxservice/HUXUTIL$TermsInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 371
    return-void
.end method
