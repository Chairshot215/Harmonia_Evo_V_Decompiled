.class public Lcom/android/org/bouncycastle/asn1/x509/X509Name;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "X509Name.java"


# static fields
.field public static final BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DMD_NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DefaultLookUp:Ljava/util/Hashtable;

.field public static DefaultReverse:Z

.field public static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private static final FALSE:Ljava/lang/Boolean;

.field public static final GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final OIDLookUp:Ljava/util/Hashtable;

.field public static final OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final RFC1779Symbols:Ljava/util/Hashtable;

.field public static final RFC2253Symbols:Ljava/util/Hashtable;

.field public static final SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SymbolLookUp:Ljava/util/Hashtable;

.field public static final T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field private static final TRUE:Ljava/lang/Boolean;

.field public static final UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private added:Ljava/util/Vector;

.field private converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private ordering:Ljava/util/Vector;

.field private seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

.field private values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->C:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->O:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "t"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->T:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->OU:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->CN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->L:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ST:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SN:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->STREET:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DC:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->E:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UID:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "surname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->SURNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->INITIALS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENERATION:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredaddress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredname"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uniqueidentifier"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "pseudonym"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "nameofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->GENDER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "placeofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "telephonenumber"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->NAME:Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v6}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v9, 0x2

    if-eq v6, v9, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "badly sized pair"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    instance-of v6, v5, Lcom/android/org/bouncycastle/asn1/DERString;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lcom/android/org/bouncycastle/asn1/DERUniversalString;

    if-nez v6, :cond_3

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERString;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v9, 0x23

    if-ne v6, v9, :cond_2

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    if-eqz v1, :cond_4

    move v6, v7

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 2

    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v4, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No attribute for object id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - passed to distinguished name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Vector;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "oids vector must be same length as values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 1

    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    new-instance v6, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_1

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "badly formatted directory string"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    const/16 v18, 0x2b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-lez v18, :cond_2

    new-instance v15, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v18, 0x2b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    if-eqz p1, :cond_6

    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    :cond_6
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x5c

    const/16 v5, 0x3d

    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x2

    :cond_0
    :goto_1
    if-eq v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    :cond_1
    const-string v3, "\\"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    return-void
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 3

    array-length v2, p1

    new-array v0, v2, [C

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    instance-of v2, v0, Lcom/android/org/bouncycastle/asn1/DERString;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERString;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeObject(Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x20

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v5, :cond_0

    if-eq v1, v5, :cond_1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    move v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    const/16 v17, 0x1

    :goto_0
    return v17

    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move/from16 v17, v0

    if-nez v17, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v17, p1

    check-cast v17, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface/range {v17 .. v17}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v17, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v13

    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_3

    const/16 v17, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    new-array v8, v13, [Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v15, 0x0

    move v5, v13

    const/4 v2, 0x1

    :goto_1
    move v7, v15

    :goto_2
    if-eq v7, v5, :cond_9

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v13, :cond_7

    aget-boolean v17, v8, v9

    if-eqz v17, :cond_6

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v15, v13, -0x1

    const/4 v5, -0x1

    const/4 v2, -0x1

    goto :goto_1

    :cond_6
    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v12, v10}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    iget-object v0, v14, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x1

    aput-boolean v17, v8, v9

    const/4 v6, 0x1

    :cond_7
    if-nez v6, :cond_8

    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_8
    add-int/2addr v7, v2

    goto :goto_2

    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public equals(Ljava/lang/Object;Z)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_0
    return v9

    :cond_0
    if-ne p1, p0, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    instance-of v9, p1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-nez v9, :cond_2

    instance-of v9, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v9, :cond_2

    move v9, v11

    goto :goto_0

    :cond_2
    move-object v9, p1

    check-cast v9, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v6

    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-eq v6, v9, :cond_4

    move v9, v11

    goto :goto_0

    :catch_0
    move-exception v1

    move v9, v11

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_7

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v7, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v8, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v11

    goto :goto_0

    :cond_5
    move v9, v11

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v9, v10

    goto :goto_0
.end method

.method public getOIDs()Ljava/util/Vector;
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getValues()Ljava/util/Vector;
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getValues(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;
    .locals 6

    const/4 v5, 0x1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .locals 8

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v7, :cond_3

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-eq v0, v7, :cond_2

    new-instance v5, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->converter:Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v7, v2, v4}, Lcom/android/org/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    :goto_1
    move-object v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v3, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v3}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    new-instance v7, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    :cond_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->seq:Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x2c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v6, p0, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v5, v6}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_2
    if-ltz v4, :cond_5

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_5
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
