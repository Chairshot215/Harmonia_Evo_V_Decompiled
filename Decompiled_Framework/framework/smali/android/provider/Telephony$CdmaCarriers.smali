.class public Landroid/provider/Telephony$CdmaCarriers;
.super Landroid/provider/Telephony$Carriers;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaCarriers"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABEARER:Ljava/lang/String; = "databearer"

.field public static final PPPNUMBER:Ljava/lang/String; = "pppnumber"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://cdmaapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Telephony$Carriers;-><init>()V

    return-void
.end method
