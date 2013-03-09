.class public final Lcom/htc/provider/HtcContactsContract$VIP_SIM;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VIP_SIM"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final RECORD_NUMBER:Ljava/lang/String; = "record_number"

.field public static final SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final TABLE_NAME:Ljava/lang/String; = "vip_sim_contact"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3099
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "vip_sim_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$VIP_SIM;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
