.class interface abstract Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter$IOpenHelper;
.super Ljava/lang/Object;
.source "HtcCustomOpenHelperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcCustomOpenHelperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "IOpenHelper"
.end annotation


# virtual methods
.method public abstract getDatabaseVersion()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getValidAccounts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public abstract onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;IIII)V
.end method

.method public abstract onWipeData(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
