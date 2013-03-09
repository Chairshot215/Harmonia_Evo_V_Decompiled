.class public final Lcom/android/providers/settings/util/HtcRefWrapSettings$System;
.super Ljava/lang/Object;
.source "HtcRefWrapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/util/HtcRefWrapSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConstantValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "fieldName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, defaultValue:Ljava/lang/Object;,"TT;"
    sget-object v0, Lcom/android/providers/settings/util/HtcDatabaseTable;->SYSTEM:Lcom/android/providers/settings/util/HtcDatabaseTable;

    invoke-static {v0, p0, p1}, Lcom/android/providers/settings/util/HtcRefWrapSettings;->getConstantValue(Lcom/android/providers/settings/util/HtcDatabaseTable;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
