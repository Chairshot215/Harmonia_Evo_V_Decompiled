.class public Lcom/android/systemui/statusbar/preference/CarrierApp$CustomizationInfo;
.super Ljava/lang/Object;
.source "CarrierApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/CarrierApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomizationInfo"
.end annotation


# static fields
.field private static final VZW_LAUNCH_METER:Ljava/lang/String; = "com.vzw.hss.myverizon.LAUNCH_DATAMETER"

.field private static final VZW_LAUNCH_MYVERIZON:Ljava/lang/String; = "com.vzw.hss.myverizon.LAUNCH_MYVERIZON"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCustomerIntentActions()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "com.vzw.hss.myverizon.LAUNCH_DATAMETER"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.vzw.hss.myverizon.LAUNCH_MYVERIZON"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
