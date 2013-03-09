.class public Lcom/android/providers/contacts/DataRowHandlerForCustomMimetype;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForCustomMimetype.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 25
    return-void
.end method
