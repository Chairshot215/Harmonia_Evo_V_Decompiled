.class Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;
.super Ljava/lang/Object;
.source "CustomizeCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/CustomizationSetup/CustomizeCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizedUtil"
.end annotation


# static fields
.field private static final KEY_SYSTEM_LOCALE:Ljava/lang/String; = "system_locale"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLanguage:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/htc/CustomizationSetup/CustomizeCase;


# direct methods
.method public constructor <init>(Lcom/htc/CustomizationSetup/CustomizeCase;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 604
    iput-object p1, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->this$0:Lcom/htc/CustomizationSetup/CustomizeCase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mLanguage:Landroid/os/Bundle;

    .line 602
    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mContext:Landroid/content/Context;

    .line 605
    iput-object p2, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mContext:Landroid/content/Context;

    .line 606
    return-void
.end method

.method static synthetic access$000(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getLocaleDataSet()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 597
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 610
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 611
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 614
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 617
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 616
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getLocaleDataSet()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mLanguage:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 666
    const-string v0, "system_locale"

    invoke-direct {p0, v0}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mLanguage:Landroid/os/Bundle;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mLanguage:Landroid/os/Bundle;

    return-object v0
.end method

.method private getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v3, p0, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 624
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 625
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 646
    :goto_0
    return-object v2

    .line 628
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 629
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 633
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 635
    const/4 v8, 0x0

    .line 637
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 644
    invoke-direct {p0, v8}, Lcom/htc/CustomizationSetup/CustomizeCase$CustomizedUtil;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 645
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 646
    goto :goto_0

    .line 639
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 640
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "Customization_Setting"

    const-string v4, "no customized data support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 661
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 650
    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-object v1

    .line 652
    :cond_1
    const-string v2, ""

    if-ne v2, p2, :cond_2

    move-object v0, p1

    .line 653
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 652
    .end local v0           #childbundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method
