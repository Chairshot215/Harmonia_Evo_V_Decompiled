.class public final Lcom/google/android/partnersetup/RlzProtocol$Apps;
.super Ljava/lang/Object;
.source "RlzProtocol.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Apps"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final RLZ_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string v0, "content://com.google.android.partnersetup.rlzprovider/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/partnersetup/RlzProtocol$Apps;->CONTENT_URI:Landroid/net/Uri;

    .line 98
    const-string v0, "content://com.google.android.partnersetup.rlzappprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/partnersetup/RlzProtocol$Apps;->RLZ_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getResourceIdForStatus(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_0

    .line 156
    const v0, 0x7f030003

    :goto_0
    return v0

    .line 152
    :pswitch_0
    const v0, 0x7f03001e

    goto :goto_0

    .line 154
    :pswitch_1
    const v0, 0x7f03001f

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
